module PostsHelper
  def post_liked_by?(args)
    post = args[:post]
    id = args[:id]
    post.likes.where(user_id: id).any?
  end
end
