require 'base64'

class UsersController < ApplicationController
  def show
    user_encoded_url = params[:encoded_url].to_s
    @user = User.where(encoded_url:user_encoded_url).first
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
    user_encoded_url = Base64.strict_encode64(user_email)
  	User.create(email:user_email, name:user_name, short_name:user_name, encoded_url:user_encoded_url)
    @user = User.where(email:user_email).first
        @list_id = ENV["MAILCHIMP_LIST_ID"]
    gb = Gibbon::Request.new
    gb.lists.retrieve
    list_id = ENV["MAILCHIMP_LIST_ID"]
    puts list_id
    puts user_encoded_url
    gb.lists(list_id).members.create(body: {
      email_address: user_email, 
      status: "subscribed", 
      merge_fields: 
        {LNAME: user_encoded_url}
    })
  	redirect_to '/'
  end
end