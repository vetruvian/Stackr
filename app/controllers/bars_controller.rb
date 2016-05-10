class BarsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :create, :update, :destroy ]
  before_action :set_bar, only: [:show, :edit, :update, :destroy]

  # GET /bars
  # GET /bars.json
  def index
    @bars = Bar.all
    @user = current_user
  end

  # GET /bars/1
  # GET /bars/1.json
  def show
    @user = current_user
  end

  # GET /bars/new
  def new
    @bar = Bar.new
    @user = current_user
  end

  # GET /bars/1/edit
  def edit
    @user = current_user
  end

  # POST /bars
  # POST /bars.json
  def create
    @bar = current_user.bars.new(bar_params)

    respond_to do |format|
      if @bar.save
        format.html { redirect_to @bar, notice: 'Bar(s) successfully added to stack!.' }
        format.json { render :show, status: :created, location: @bar }
      else
        format.html { render :new }
        format.json { render json: @bar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bars/1
  # PATCH/PUT /bars/1.json
  def update
    respond_to do |format|
      if @bar.update(bar_params)
        format.html { redirect_to @bar, notice: 'Bar(s) successfully updated!' }
        format.json { render :show, status: :ok, location: @bar }
      else
        format.html { render :edit }
        format.json { render json: @bar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bars/1
  # DELETE /bars/1.json
  def destroy
    @bar.destroy
    respond_to do |format|
      format.html { redirect_to bars_url, notice: 'Bar(s) successfully removed!' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar
      @bar = Bar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bar_params
      params.require(:bar).permit(:quantity, :name, :dateOfPurchase, :silverContent, :mintYear, :purchasePrice, :spotAtPurchase, :serialNumber, :country, :condition, :comments, :entryweight )
    end
end
