module Upcloud
  require 'httparty'
  class BaseCommand

    include HTTParty
    base_uri = "https://api.upcloud.fi/1.1/"
    basic_auth "username", "password"


    def get(url, params)
      raise "implement"
    end

    def post(url, params)
      raise "implement"
    end
  end
end
