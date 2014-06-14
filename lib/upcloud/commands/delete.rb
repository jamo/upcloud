module Upcloud
  module Command

    require 'optparse'
    class Stop < BaseCommand

      def parameters
        {}
      end

      def end_url

        "/server/#{@uuid}"
      end

      def do_it(args)
        puts "enkä poista"
        exit 1337
        format delete(end_url, parameters)
      end

    end

  end
end

