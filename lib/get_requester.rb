# Write your code here

require 'net/http'
require 'open-uri'
require 'json'


class GetRequester

#   GetRequester
#     is a class that can be initiated by passing in a URL

    URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"


    def initialize(url)
        @url = url
    end 

#    get_response_body
#       is an instance method on the GetRequester class
#       sends a GET request to the URL provided on initialization, returning the body of the request

    def get_response_body
        uri = URI.parse(URL)
        response = Net::HTTP.get_response(uri)
        response.body
    end 

#   parse_json
#     is an instance method on the GetRequester class
#     converts JSON returned from 'get_response_body' into Ruby data structures


    def parse_json
        JSON.parse(get_response_body)
        # parse_json = JSON.parse(self.get_response_body)
        # parse_json.each do |parse_json|
        #     parse_json["body"]
        # end 

    end 
end 


# in IRB 
# get_requester = GetRequester.new
# get_requester.parse_json
