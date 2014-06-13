module Upcloud
  require 'httparty'
  class BaseCommand

    include HTTParty
    base_uri "https://api.upcloud.com/1.1/"

    #debug_output
    basic_auth "username", "pasword"


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
