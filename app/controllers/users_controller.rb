class UsersController < ApplicationController
  def show
    user_short_name = params[:short_name]
    @user = User.where(short_name:user_short_name).first
    @comments = @user.comments
  end
end