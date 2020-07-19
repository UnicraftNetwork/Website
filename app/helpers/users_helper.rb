module UsersHelper

  # Resolves the requested statistic from the provided
  # record, or '?' if nil
  def resolve_stat(pgm_record, stat)
    return '?' if pgm_record.nil?

    case stat
    when 'kills'
      pgm_record&.kills
    when 'deaths'
      pgm_record&.deaths
    when 'kd'
      pgm_record&.kd
    when 'kk'
      pgm_record&.kk
    when 'wools'
      pgm_record&.wools
    when 'monuments'
      pgm_record&.monuments
    when 'cores'
      pgm_record&.cores
    else
      '?'
    end
  end

  module Profile
    class << self
      def render(content)
        do_safe(do_sanitize(content))
      end

      def do_safe(content)
        content.html_safe
      end

      def do_sanitize(content)
        Sanitize.clean(content, Sanitize::Config::RELAXED)
      end
    end
  end
end
