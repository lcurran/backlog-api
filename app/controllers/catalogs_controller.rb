# Controls interactions between the user, IGDB API and Game DB
class CatalogsController < ProtectedController
  skip_before_action :authenticate, only: [:index]

  # GET /search to IGDB
  def index
    render json: ConnectionIGDB.new(params[:search]).result
  end

  # POST add game to user library
  def create
    @game = Game.create(game_params)
    if @game.valid?
      render json: @game, status: :created
    else
      render json: Game.find(game_params[:name])
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

  def game_params
    params.require(:catalog).permit(:igdb_id, :name, :summary, :cover, :video)
  end
end
