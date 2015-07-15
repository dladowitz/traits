# == Schema Information
#
# Table name: traits
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Trait < ActiveRecord::Base
  # validates :name, presence: true

  has_many :founders, through: :personal_traits
  has_many :personal_traits
end
