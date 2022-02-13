class Post
  include Mongoid::Document

  field :title, type: String
  field :text, type: String
  field :comments_count, type: Integer, default: 0
  field :likes_count, type: Integer, default: 0

  validates :title, presence: true
  validates :text, presence: true

  belongs_to :user, counter_cache: true
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  include Mongoid::Timestamps

  def self.most_recent(limit = 3)
    order(created_at: :desc).limit(limit)
  end

  def most_recent_comments(limit = 5)
    comments.most_recent_comments(limit)
  end
end
