class Competitor < ActiveRecord::Base

  belongs_to :user
  mount_uploader :image, ImageUploader

  validates :name, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true

  def full_address
    "#{address}, #{city}, #{state} #{zip}"
  end 

end 