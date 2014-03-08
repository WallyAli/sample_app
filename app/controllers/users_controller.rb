class UsersController < ApplicationController
  def new
  	@title = "Sign up"
  end

  def show
  	@user = User.find(params[:id])
    @title = @user.name 
  end

  private
  
	  def user_params
	  	params.require(:user).permit(:name, :email, :password, :password)
	  end
end
