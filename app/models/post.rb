class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates :title, :presence => true, length: { minimum: 5 }
  validates :body, :presence => true, length: { minimum: 5 }

  attachment :image, type: :image

  extend FriendlyId
  friendly_id :title, use: [:slugged, :history]

  def should_generate_new_friendly_id?
    if !slug? || title_changed?
      true
    else
      false
    end
  end
end
