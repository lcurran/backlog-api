require 'unirest'

# IGDB API GAME SEARCH CONNECTION
class ConnectionIGDB
  def initialize(param)
    response = Unirest.get ('https://igdbcom-internet-game-database-v1.p.mashape.com/games/?fields=name%2Csummary%2Cstoryline%2Cvideos%2Ccover&search=' + param),
                           headers: {
                             'X-Mashape-Key' => ENV['igdb_api_key'],
                             'Accept' => 'application/json'
                           }

    puts response.code
    puts response.body
  end
end
