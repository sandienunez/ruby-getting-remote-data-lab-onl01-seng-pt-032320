require 'open-uri'
require 'net/http'
require 'json'

class GetRequester
    def initialize(url)
        @url = url #all caps = for constants (like variables)
    end

    def get_response_body 
      variable = URI.parse(@url)
     # binding.pry
      Net::HTTP.get_response(variable).body
    end

    def parse_json
        JSON.parse(get_response_body)
    end

end
