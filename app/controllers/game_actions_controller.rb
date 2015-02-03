class GameActionsController < ApplicationController
  before_action :set_game_action, only: [:show, :edit, :update, :destroy]

  # GET /game_actions
  # GET /game_actions.json
  def index
    @game_actions = GameAction.all
  end

  # GET /game_actions/1
  # GET /game_actions/1.json
  def show
  end

  # GET /game_actions/new
  def new
    @game_action = GameAction.new
  end

  # GET /game_actions/1/edit
  def edit
  end

  # POST /game_actions
  # POST /game_actions.json
  def create
    @game_action = GameAction.new(game_action_params)

    respond_to do |format|
      if @game_action.save
        format.html { redirect_to @game_action, notice: 'Game action was successfully created.' }
        format.json { render action: 'show', status: :created, location: @game_action }
      else
        format.html { render action: 'new' }
        format.json { render json: @game_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /game_actions/1
  # PATCH/PUT /game_actions/1.json
  def update
    respond_to do |format|
      if @game_action.update(game_action_params)
        format.html { redirect_to @game_action, notice: 'Game action was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @game_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game_actions/1
  # DELETE /game_actions/1.json
  def destroy
    @game_action.destroy
    respond_to do |format|
      format.html { redirect_to game_actions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_action
      @game_action = GameAction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_action_params
      params.require(:game_action).permit(:moveto_x, :moveto_y, :actor_id, :turn_id)
    end
end
