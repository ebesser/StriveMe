class Comment < ActiveRecord::Base
	# attr_accessible :body, :email

 private
  def comment_params
    params.require(:comment).permit(:body, :email)
  end
end
