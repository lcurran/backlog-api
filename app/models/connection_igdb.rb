require 'unirest'
# IGDB API GAME SEARCH CONNECTION
class ConnectionIGDB
  def initialize(param)
    @body = Unirest.get(('https://igdbcom-internet-game-database-v1.p.mashape.com/games/?fields=name%2Csummary%2Cvideos%2Ccover&search=' + param.to_s),
      headers: {
                  'X-Mashape-Key' => ENV['igdb_api_key'],
                  'Accept' => 'application/json'
                }).body
  end

  def result
    @result = {
      'catalogs' => []
    }
    @body.each_index do |i|
      hash = {}
      hash[:id] = @body[i]['id']
      hash[:name] = @body[i]['name']
      hash[:summary] = @body[i]['summary'] if @body[i]['summary']
      hash[:cover] = @body[i]['cover']['cloudinary_id'] if @body[i]['cover']
      hash[:video] = @body[i]['videos'][0]['video_id'] if @body[i]['videos']
      @result['catalogs'][i] = hash
    end
    return @result
  end
end
