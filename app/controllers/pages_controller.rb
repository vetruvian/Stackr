class PagesController < ApplicationController
	before_action :authenticate_user!, only: [:dashboard]

  def home
  	if current_user 
  		redirect_to dashboard_path
  	end
  end

  def dashboard
  	@user = current_user
  	@coins = @user.coins
    @bars = @user.bars
    @rounds = @user.rounds
    @junks = @user.junks
    @others = @user.others
    @stock = StockQuote::Stock.quote('XAGUSD=X', nil, nil, ['Symbol', 'Ask', 'Bid'])
  end

  



end

