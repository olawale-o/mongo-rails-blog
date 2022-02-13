class Comment
  include Mongoid::Document

  field :text, type: String

  belongs_to :post
  belongs_to :user
  include Mongoid::Timestamps
end
