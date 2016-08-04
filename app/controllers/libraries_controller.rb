#
class LibrariesController < ProtectedController
  before_action :set_library, only: [:show, :update, :destroy]

  # GET /libraries
  # GET /libraries.json
  def index
    @libraries = current_user.libraries.all

    render json: @libraries
  end

  # GET /libraries/1
  # GET /libraries/1.json
  def show
    render json: @library
  end

  # POST /libraries
  # POST /libraries.json
  def create
    @library = current_user.libraries.build(library_params)

    if @library.save
      render json: @library, status: :created, location: @library
    else
      render json: @library.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /libraries/1
  # PATCH/PUT /libraries/1.json
  def update
    @library = Library.find(params[:id])

    if @library.update(library_params)
      head :no_content
    else
      render json: @library.errors, status: :unprocessable_entity
    end
  end

  # DELETE /libraries/1
  # DELETE /libraries/1.json
  def destroy
    @library.destroy

    head :no_content
  end

  private

  def set_library
    @library = Library.find(params[:id])
  end

  def library_params
    params.require(:library).permit(:game_id, :user_id, :done)
  end
end
