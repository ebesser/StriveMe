class EmailProcessor
  def initialize(comment)
    @comment = comment
  end

  def process
    title = @comment.subject
    body = @comment.body

    Comment.create!(title: title, body: body)
  end
end