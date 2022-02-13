class Post
  include Mongoid::Document

  field :title, type: String
  field :text, type: String

  validates :title, presence: true
  validates :text, presence: true

  belongs_to :user, counter_cache: true

  include Mongoid::Timestamps
end
