class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def home
  	@user = current_user
  	@stock = StockQuote::Stock.quote('XAGUSD=X', nil, nil, ['Symbol', 'Ask', 'Bid'])
  end

end
