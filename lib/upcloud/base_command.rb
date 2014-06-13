module Upcloud
  require 'httparty'
  require 'upcloud/my_config'
  class BaseCommand

    include HTTParty
    base_uri "https://api.upcloud.com/1.1/"

    #debug_output
    basic_auth ::Upcloud::MyConfig.username, ::Upcloud::MyConfig.password


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
