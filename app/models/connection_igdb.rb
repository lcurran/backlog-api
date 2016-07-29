require 'unirest'

# IGDB API GAME SEARCH CONNECTION
class ConnectionIGDB
  def initialize(params)
    response = Unirest.get 'https://igdbcom-internet-game-database-v1.p.mashape.com/games/',
                           headers: {
                             'X-Mashape-Key' => ENV["igdb_api_key"],
                             'Accept' => 'application/json'
                           },
                           parameters: params

    puts response.code
    puts response.body
  end
end
