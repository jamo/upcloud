module Upcloud
  module Command

    class Price < BaseCommand

      def parameters

        {}
      end

      def end_url

        "/price"
      end

      def do_it(args)

        format get(end_url, parameters)
      end

    end
  end
end
