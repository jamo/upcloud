module Upcloud

  require 'pp'
  require 'json'
  class ResultsFormatter

    def format(json)

      p JSON: json
      puts
      puts
      print_code(json.response.code)
      puts JSON.pretty_generate(JSON.parse(json.body))
    end

    def print_code(code)
      code = code.to_i
      str = case code
      when 200..299
        green("Code: #{code}")
      when 400..499
        red("Code: #{code}")
      else
         "lol"
      end
      puts str
    end

    private
    def colorize(color_code,str)
      "\e[#{color_code}m#{str}\e[0m"
    end

    def red(str)
      colorize(31, str)
    end

    def green(str)
      colorize(32,str)
    end

    def yellow(str)
      colorize(33,str)
    end

    def pink(str)
      colorize(35, str)
    end
  end

end
