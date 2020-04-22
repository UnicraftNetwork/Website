module StaffHelper

  # Small Module for a quick resolution of Minecraft nicknames
  module Mojang
    require 'open-uri'

    class Error < RuntimeError; end

    class << self
      attr_accessor :logger
      attr_accessor :timeout

      def log(msg)
        logger.debug(msg) if logger
      end

      # Just gets a URL and wraps errors in Mojang::Error
      def api_get(url, &block)
        Timeout.timeout(timeout || 0) do
          open(url, &block)
        end
      rescue OpenURI::HTTPError => ex
        log "Failed to get url #{url}: #{ex}"
        raise Error
      rescue Timeout::Error
        log "Timed out (#{timeout}) getting url #{url}"
        raise Error
      end

      def uuid_to_username(uuid)
        api_get("https://api.ashcon.app/mojang/v1/user/#{uuid}") do |io|
          JSON.parse(io.read)['username']
        end
      end

      def resolve_to_steve
        api_get('https://api.ashcon.app/mojang/v1/user/Steve') do |io|
          JSON.parse(io.read)['username']
        end
      end

      def normalize_uuid(uuid)
        if uuid.is_a? UUIDTools::UUID
          uuid.to_s
        elsif uuid =~ /\A\h{8}-\h{4}-\h{4}-\h{4}-\h{12}\z/
          uuid.downcase
        elsif uuid =~ /\A(\h{8})(\h{4})(\h{4})(\h{4})(\h{12})\z/
          "#{$1}-#{$2}-#{$3}-#{$4}-#{$5}".downcase
        else
          # Validation will catch it
          uuid
        end
      end

      def username_url(name)
        "https://api.ashcon.app/mojang/v1/user/#{name}"
      end
    end
  end
end
