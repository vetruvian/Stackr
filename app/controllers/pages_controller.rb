class PagesController < ApplicationController
	before_action :authenticate_user!, only: [:dashboard]

  def home
  	if current_user 
  		redirect_to dashboard_path
  	end
  end

  def dashboard
  	@user = current_user
  	@stock = StockQuote::Stock.quote('XAGUSD=X', nil, nil, ['Symbol', 'Ask', 'Bid'])
  end

  



end

