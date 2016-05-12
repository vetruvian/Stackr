class AboutController < ApplicationController
  def home
  	@user = current_user
  	@stock = StockQuote::Stock.quote('XAGUSD=X', nil, nil, ['Symbol', 'Ask', 'Bid'])
  end
end
