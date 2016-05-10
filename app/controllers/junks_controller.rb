class JunksController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :create, :update, :destroy ]
  before_action :set_junk, only: [:show, :edit, :update, :destroy]

  # GET /junks
  # GET /junks.json
  def index
    @junks = Junk.all
    @user = current_user
  end

  # GET /junks/1
  # GET /junks/1.json
  def show
    @user = current_user
  end

  # GET /junks/new
  def new
    @junk = Junk.new
    @user = current_user
  end

  # GET /junks/1/edit
  def edit
    @user = current_user
  end

  # POST /junks
  # POST /junks.json
  def create
    @junk = current_user.junks.new(junk_params)

    respond_to do |format|
      if @junk.save
        format.html { redirect_to @junk, notice: 'Junk successfully added to stack!' }
        format.json { render :show, status: :created, location: @junk }
      else
        format.html { render :new }
        format.json { render json: @junk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /junks/1
  # PATCH/PUT /junks/1.json
  def update
    respond_to do |format|
      if @junk.update(junk_params)
        format.html { redirect_to @junk, notice: 'Junk successfully updated!' }
        format.json { render :show, status: :ok, location: @junk }
      else
        format.html { render :edit }
        format.json { render json: @junk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /junks/1
  # DELETE /junks/1.json
  def destroy
    @junk.destroy
    respond_to do |format|
      format.html { redirect_to junks_url, notice: 'Junk successfully removed!' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_junk
      @junk = Junk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def junk_params
      params.require(:junk).permit(:quantity, :name, :dateOfPurchase, :silverContent, :silverPercentage, :purchasePrice, :spotAtPurchase, :country, :condition, :comments, :entryWeight)
    end
end
