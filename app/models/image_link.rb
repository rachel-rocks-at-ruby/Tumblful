class ImageLink < ActiveRecord::Base
  belongs_to :user

  scope :recent, lambda { order('created_at DESC').limit(2) }

  validates_presence_of :url
end
