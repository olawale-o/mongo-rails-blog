module CommentsHelper
  def comments_with_user(comments)
    comments.includes(:user)
  end
end
