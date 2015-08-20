class EmailProcessor
  def initialize(comment)
    @comment = comment
    # binding.pry
  end

  def process
    subject = @comment.subject
    body = @comment.body
    user_email = @comment.from[:email]
    print user_email   
    user_name = @comment.from[:email].split("@")[0]
    user_short_name = user_name
    if User.exists?(email:user_email)
    	user_object = User.where(email:user_email)
    	user_id = user_object[0].id
    else
    	User.create(email:user_email, name:user_name, short_name:user_short_name)
    	user_object = User.where(email:user_email).first
    	user_id = user_object.id
    end
    Comment.create!(email: subject, body: body, user_id: user_id)
  end
end