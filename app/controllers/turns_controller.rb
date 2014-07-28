class TurnsController < ApplicationController
  before_action :set_turn, only: [:show, :edit, :update, :destroy]
  before_action :set_game

  # GET /turns
  # GET /turns.json
  def index
    @turns = @game.turns
  end

  # GET /turns/1
  # GET /turns/1.json
  def show
  end

  # GET /turns/new
  def new
    @turn = @game.turns.build
  end

  # GET /turns/1/edit
  def edit
    @turn = @game.turns.find(params[:id])
  end

  # POST /turns
  # POST /turns.json
  def create
    @turn = @game.turns.build(params[:turn])

    respond_to do |format|
      if @turn.save
        format.html { redirect_to game_turns_url(@game), notice: 'Turn was successfully created.' }
        format.json { render action: 'show', status: :created, location: @turn }
      else
        format.html { render action: 'new' }
        format.json { render json: @turn.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /turns/1
  # PATCH/PUT /turns/1.json
  def update
    respond_to do |format|
      if @turn.update(turn_params)
        format.html { redirect_to game_turns_url(@game), notice: 'Turn was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @turn.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /turns/1
  # DELETE /turns/1.json
  def destroy
    @turn.destroy
    respond_to do |format|
      format.html { redirect_to game_turns_url(@game) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_turn
      @turn = @game.turns.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def turn_params
      params.require(:turn).permit(:sequence)
    end

    def set_game
      @game = Game.find(params[:game_id])
    end 
end
