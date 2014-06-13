module Upcloud
  require 'httparty'
  class BaseCommand

    include HTTParty
    base_uri = "https://api.upcloud.fi/1.1/"
    basic_auth "username", "password"


    def get(url, params)
      params ||= {}
      self.class.get(url,params)
    end

    def post(url, params={})
      params ||= {}
      self.class.post(url,params)
    end

    def format(json)
      ResultsFormatter.new.format(json)
    end
  end
end
