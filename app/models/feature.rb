class Feature < ActiveRecord::Base
  belongs_to :product
  belongs_to :user
  mount_uploader :image, ImageUploader

  STATUS_OPTIONS = [
    'Complete', 
    'In-Development', 
    'In-Design', 
    'On-Deck', 
    'Backlog', 
    'Unscheduled'
  ]

end
