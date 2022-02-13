class Comment
  include Mongoid::Document

  field :text, type: String

  belongs_to :post, counter_cache: true
  belongs_to :user
  include Mongoid::Timestamps

  def self.most_recent_comments(limit = 5)
    order(created_at: :desc).limit(limit)
  end

  def comment_by
    user.name
  end
end
