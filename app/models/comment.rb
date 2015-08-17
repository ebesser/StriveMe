class Comment < ActiveRecord::Base

 private
  def comment_params
    params.require(:comment).permit(:body, :email, :user_id)
  end
end
