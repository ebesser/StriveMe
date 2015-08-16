class EmailProcessor
  def initialize(comment)
    @comment = comment
    binding.pry
  end

  def process
    email = @comment.subject
    body = @comment.body

    Comment.create!(email: email, body: body)
  end
end