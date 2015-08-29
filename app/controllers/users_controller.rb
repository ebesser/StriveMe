class UsersController < ApplicationController
  def show
    user_email = params[:email].to_s
    @user = User.where(email:user_email).first
    if @user
      @comments = @user.comments.reverse_order
    else
      redirect_to '/'
    end
  end

  def create
  	puts params
  	user_email = params['user']['email']
    @user_email = user_email
  	user_name = user_email.split("@")[0]
  	User.create(email:user_email, name:user_name, short_name:user_name)
    @user = User.where(email:user_email).first
        @list_id = ENV["MAILCHIMP_LIST_ID"]
    gb = Gibbon::Request.new
    gb.lists.retrieve
    list_id = ENV["MAILCHIMP_LIST_ID"]
    puts list_id
    gb.lists(list_id).members.create(body: {email_address: user_email, status: "subscribed",})
    # UserMailer.user_created(@user)
  	redirect_to '/'
  end
end