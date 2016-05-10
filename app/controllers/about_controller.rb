class AboutController < ApplicationController
  def home
  	@user = current_user
  end
end
