module PostsHelper
  def post_liked_by?(args)
    post = args[:post]
    id = args[:id]
    post.likes.exists? && post.likes.find_by(user_id: id).present?
  end
end
