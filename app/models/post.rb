class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates :title, :presence => true, length: { minimum: 5 }
  validates :body, :presence => true

  extend FriendlyId
  friendly_id :title, use: [:slugged, :history]
end
