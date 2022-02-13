class Post
  include Mongoid::Document

  field :title, type: String
  field :text, type: String
  field :comments_count, type: Integer, default: 0
  field :likes_count, type: Integer, default: 0

  validates :title, presence: true
  validates :text, presence: true

  belongs_to :user, counter_cache: true

  include Mongoid::Timestamps
end
