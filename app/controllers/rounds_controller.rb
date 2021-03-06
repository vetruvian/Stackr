class RoundsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :create, :update, :destroy ]
  before_action :set_round, only: [:show, :edit, :update, :destroy]

  # GET /rounds
  # GET /rounds.json
  def index
    @rounds = Round.all
    @user = current_user
    @stock = StockQuote::Stock.quote('XAGUSD=X', nil, nil, ['Symbol', 'Ask', 'Bid'])
  end

  # GET /rounds/1
  # GET /rounds/1.json
  def show
    @user = current_user
    @stock = StockQuote::Stock.quote('XAGUSD=X', nil, nil, ['Symbol', 'Ask', 'Bid'])
  end

  # GET /rounds/new
  def new
    @user = current_user
    @stock = StockQuote::Stock.quote('XAGUSD=X', nil, nil, ['Symbol', 'Ask', 'Bid'])
    @round = Round.new
  end

  # GET /rounds/1/edit
  def edit
    @user = current_user
    @stock = StockQuote::Stock.quote('XAGUSD=X', nil, nil, ['Symbol', 'Ask', 'Bid'])
  end

  # POST /rounds
  # POST /rounds.json
  def create
    @round = current_user.rounds.new(round_params)

    respond_to do |format|
      if @round.save
        format.html { redirect_to @round, notice: 'Round(s) successfully added to stack!' }
        format.json { render :show, status: :created, location: @round }
      else
        format.html { render :new }
        format.json { render json: @round.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rounds/1
  # PATCH/PUT /rounds/1.json
  def update
    respond_to do |format|
      if @round.update(round_params)
        format.html { redirect_to @round, notice: 'Round(s) successfully updated!' }
        format.json { render :show, status: :ok, location: @round }
      else
        format.html { render :edit }
        format.json { render json: @round.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rounds/1
  # DELETE /rounds/1.json
  def destroy
    @round.destroy
    respond_to do |format|
      format.html { redirect_to rounds_url, notice: 'Round(s) successfully removed!' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_round
      @round = Round.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def round_params
      params.require(:round).permit(:quantity, :name, :dateOfPurchase, :silverContent, :mintYear, :purchasePrice, :spotAtPurchase, :serialNumber, :country, :condition, :comments, :entryWeight)
    end
end
