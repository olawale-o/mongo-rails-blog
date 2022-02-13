class Like
  include Mongoid::Document

  belongs_to :user
  belongs_to :post, counter_cache: true
  include Mongoid::Timestamps
end
