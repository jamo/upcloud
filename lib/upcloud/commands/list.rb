module Upcloud
  module Command

    class List < BaseCommand

      def parameters

        {}
      end

      def end_url

        "/server"
      end

      def do_it(args)

        format get(end_url, parameters)
      end

    end
  end
end
