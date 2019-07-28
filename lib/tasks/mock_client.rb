require "httparty"
require "json"

API_HOST = "https://pacific-harbor-11772.herokuapp.com/api/points"

namespace :mock do

  desc "Mock a client"
  task :client => :environment do

    def random_point
      return {
        values: {
          x: rand(2),
        }
      }
    end

    while true do
      puts "POSTING POINT"
      result = HTTParty.post(
        API_HOST,
        body: {
          point: random_point
        }
      )
      puts "GOT " + result.status
      sleep(1)
    end
  end

end
