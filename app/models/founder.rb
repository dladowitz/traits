# == Schema Information
#
# Table name: founders
#
#  id         :integer          not null, primary key
#  name       :string
#  image_url  :string           default("http://ia.media-imdb.com/images/M/MV5BMTk2MDg2NjMzM15BMl5BanBnXkFtZTgwMzk0NTc5MjE@._V1_SY317_CR104,0,214,317_AL_.jpg")
#  quote      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Founder < ActiveRecord::Base
  has_many :personal_traits
  has_many :traits, through: :personal_traits
  accepts_nested_attributes_for :traits

  validates :name, presence: true, uniqueness: true

  def validate_image_url
    if self.image_url.blank?
      self.image_url = "http://ia.media-imdb.com/images/M/MV5BMTk2MDg2NjMzM15BMl5BanBnXkFtZTgwMzk0NTc5MjE@._V1_SY317_CR104,0,214,317_AL_.jpg"
      binding.pry
    end
  end
end
