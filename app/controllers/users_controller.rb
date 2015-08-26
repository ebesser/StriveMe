class UsersController < ApplicationController
  def show
    user_email = params[:email].to_s
    @user = User.where(email:user_email).first
    @comments = @user.comments.reverse_order
  end

  def create
  	puts params
  	user_email = params['user']['email']
  	user_name = user_email.split("@")[0]
  	User.create(email:user_email, name:user_name, short_name:user_name)
    @user = User.where(email:user_email).first
    UserMailer.user_created(@user).deliver
  	redirect_to '/'
  end
end