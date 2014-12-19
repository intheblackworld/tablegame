class GamesController < ApplicationController
	def upvote
  @game = Game.find(params[:id])
  @game.counts.create
  redirect_to(games_path)
end
	def index
    @games = Game.all
  end

  # GET /topics/1
  # GET /topics/1.json
  def show
  	@game = Game.find(params[:id])
  end

  # GET /topics/new
  def new
    @game = Game.new
  end

  # GET /topics/1/edit
  def edit
  end

  # POST /topics
  # POST /topics.json
  def create
    @game = Game.new(game_params)

    respond_to do |format|
      if @game.save
        format.html { redirect_to @game, notice: '該款桌遊遊戲已建立' }
        format.json { render :show, status: :created, location: @game }
      else
        format.html { render :new }
        format.json { render json: @topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /topics/1
  # PATCH/PUT /topics/1.json
  def update
    respond_to do |format|
      if @game.update(game_params)
        format.html { redirect_to @topic, notice: ' 該款桌遊遊戲已更新' }
        format.json { render :show, status: :ok, location: @topic }
      else
        format.html { render :edit }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /topics/1
  # DELETE /topics/1.json
  def destroy
  	@game = Game.find(params[:id])
    @game.destroy
    respond_to do |format|
      format.html { redirect_to games_url, notice: '該款桌遊遊戲已經刪除.' }
      format.json { head :no_content }
    end
  end

  

  def downvote
    @game = Count.find(params[:id])
    @game.counts.last.destroy
    redirect_to (games_path)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_topic
      @game = Game.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_params
      params.require(:game).permit(:gamename)
    end
end
