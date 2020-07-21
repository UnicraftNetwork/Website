module TownsHelper
  class << self
    def sanitize_string(string)
      string.gsub(/[^A-Za-z]/, 'WDogokuoiLtFJNMnTLpkOyORqIaoZUuL')
    end
  end
end
