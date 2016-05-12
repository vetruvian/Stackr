# CREATED

class RegistrationsController < Devise::RegistrationsController

	def sign_up_params
		params.require(:user).permit(:name, :email, :password)
	end

	def account_update_params
		params.require(:user).permit(:name, :email, :password, :current_password)
	end

	def edit
    @user = current_user
    @stock = StockQuote::Stock.quote('XAGUSD=X', nil, nil, ['Symbol', 'Ask', 'Bid'])
  end

end