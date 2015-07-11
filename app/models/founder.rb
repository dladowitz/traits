# == Schema Information
#
# Table name: founders
#
#  id         :integer          not null, primary key
#  name       :string
#  image_url  :string
#  quote      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Founder < ActiveRecord::Base
  has_many :personal_traits
  has_many :traits, through: :personal_traits
  accepts_nested_attributes_for :traits

  validates :name, presence: true, uniqueness: true
end
