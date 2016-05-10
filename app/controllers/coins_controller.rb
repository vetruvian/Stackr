class CoinsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :create, :update, :destroy ]
  before_action :set_coin, only: [:show, :edit, :update, :destroy]

  # GET /coins
  # GET /coins.json
  def index
    @coins = Coin.all
    @user = current_user
  end

  # GET /coins/1
  # GET /coins/1.json
  def show
    @user = current_user
  end

  # GET /coins/new
  def new
    @coin = Coin.new
    @user = current_user
  end

  # GET /coins/1/edit
  def edit
    @user = current_user
  end

  # POST /coins
  # POST /coins.json
  def create
    # @coin = Coin.new(coin_params)
    @coin = current_user.coins.new(coin_params)

    respond_to do |format|
      if @coin.save
        format.html { redirect_to @coin, notice: 'Coin(s) successfully added to stack!' }
        format.json { render :show, status: :created, location: @coin }
      else
        format.html { render :new }
        format.json { render json: @coin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coins/1
  # PATCH/PUT /coins/1.json
  def update
    respond_to do |format|
      if @coin.update(coin_params)
        format.html { redirect_to @coin, notice: 'Coin(s) successfully updated!' }
        format.json { render :show, status: :ok, location: @coin }
      else
        format.html { render :edit }
        format.json { render json: @coin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coins/1
  # DELETE /coins/1.json
  def destroy
    @coin.destroy
    respond_to do |format|
      format.html { redirect_to coins_url, notice: 'Coin(s) successfully removed!' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coin
      @coin = Coin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coin_params
      params.require(:coin).permit(:quantity, :name, :dateOfPurchase, :silverContent, :mintYear, :purchasePrice, :spotAtPurchase, :country, :condition, :comments, :entryWeight)
    end
end
