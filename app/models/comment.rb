class Comment < ActiveRecord::Base
  belongs_to :post
  validates :name, :presence => true
  validates :body, :presence => true, length: { minimum: 5 }
end
