module Upcloud

  class MyConfig
    require 'io/console'

    class << self

      def preferences

        $preferences ||=
          if File.exists? path
            YAML.load(File.read(path))
          else
            {}
          end
        $preferences
      end

      def save!
        File.write(path,YAML.dump(preferences))
      end

      def username=(name)

        self.preferences[:username]=name
        save!
        name
      end

      def password=(passwd)

        self.preferences[:password]=passwd
        save!
        passwd

      end

      def username
        username = self.preferences[:username]
        if username
          username
        else
          print "Username: "
          self.username=($stdin.gets.strip)
        end
      end

      def password
        password = self.preferences[:password]
        if password
          password
        else
          print "Password: "
          self.password=($stdin.noecho(&:gets).strip)
          puts
        end
      end

      private
      def path
        File.join(ENV['HOME'], '.upcloud')
      end

    end
  end
end
