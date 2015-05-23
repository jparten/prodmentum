class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_many :products
  has_many :ideas
  has_many :features 
  has_many :kpis
  has_many :competitors

  ratyrate_rater

end
