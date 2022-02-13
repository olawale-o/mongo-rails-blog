class Comment
  include Mongoid::Document

  field :text, type: String

  belongs_to :post, counter_cache: true
  belongs_to :user
  include Mongoid::Timestamps
end
