module Upcloud
  module Command

    class Start < BaseCommand

      def parameters
      end

      def end_url

        "server/#{$uuid}/start"
      end

      def do_it(args)

       puts "Starting #{$uuid}"
       post(end_url, parameters)
      end

    end

  end
end

