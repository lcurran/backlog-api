# Controls interactions between the user, IGDB API and Game DB
class CatalogsController < ProtectedController
  skip_before_action :authenticate, only: [:search]

  # GET /search to IGDB
  def search
    @query = ConnectionIGDB.new(search_param)

    if @query.response.code == 200
      render json: @query.response.body
    else
      render json: @query.errors
    end
  end

  # POST /addgame
  def addgame
    if Game.find(@game[:igdb_id])
      @newlib = Library.new(@library)
    else
      @newgame = Game.new(@game)
      @newlib = Library.new(current_user[:id], @newgame[:id])
    end
    
    if @newlib.save
      render json: @library, status: :created, location: @library
    else
      render json: @library.errors, status: :unprocessable_entity
    end
  end

  private

  def set_create_params
    @library = catalog_params.delete(:igdb_id)
  end

  def set_game
    @game = catalog_params[:game]
  end

  def search_param
    params.require(:keyword)
  end

  def catalog_params
    params.require(:catalog).permit(:user_id, :games_id, :igdb_id)
  end
end
