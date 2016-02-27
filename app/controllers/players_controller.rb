class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy]

  # GET /players
  # GET /players.json
  def index
    if params[:search]
      searchstring = params[:search].capitalize
      @players = Player.where("flag !='i' AND name LIKE ?","%#{searchstring}%").page params[:page]
    else
      @players = Player.where("flag !='i'").page params[:page]
    end
  end

  def import
    Player.import(params[:file])
    redirect_to root_url, notice: "Players Imported"
  end

  def girls
    if params[:search]
      searchstring = params[:search].capitalize
      @players = Player.where("sex = 'F' AND birthday>=1995 AND name LIKE ?","%#{searchstring}%").page params[:page]
    else
      @players = Player.where("sex = 'F' AND birthday>=1995").page params[:page]
    end
  end

  def women
    if params[:search]
      searchstring = params[:search].capitalize
      @players = Player.where("sex = 'F' AND name LIKE ?","%#{searchstring}%").page params[:page]
    else
      @players = Player.where("sex = 'F'").page params[:page]
    end
  end

  def juniors
    if params[:search]
      searchstring = params[:search].capitalize
      @players = Player.where("birthday>=1995 AND name LIKE ?","%#{searchstring}%").page params[:page]
    else
      @players = Player.where("birthday>=1995").page params[:page]
    end
  end  


  def all
    if params[:search]
      searchstring = params[:search].capitalize
      @players = Player.where("name LIKE ?","%#{searchstring}%").page params[:page]
    else
      @players = Player.all.page params[:page]
    end
  end


  # GET /players/1
  # GET /players/1.json
  def show
  end

  # GET /players/new
  def new
    @player = Player.new
  end

  # GET /players/1/edit
  def edit
  end

  # POST /players
  # POST /players.json
  def create
    @player = Player.new(player_params)

    respond_to do |format|
      if @player.save
        format.html { redirect_to @player, notice: 'Player was successfully created.' }
        format.json { render :show, status: :created, location: @player }
      else
        format.html { render :new }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /players/1
  # PATCH/PUT /players/1.json
  def update
    respond_to do |format|
      if @player.update(player_params)
        format.html { redirect_to @player, notice: 'Player was successfully updated.' }
        format.json { render :show, status: :ok, location: @player }
      else
        format.html { render :edit }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /players/1
  # DELETE /players/1.json
  def destroy
    @player.destroy
    respond_to do |format|
      format.html { redirect_to players_url, notice: 'Player was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player
      @player = Player.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_params
      params.require(:player).permit(:fideid, :name, :rating, :k, :rapid, :blitz, :birthday)
    end
end
