# == Schema Information
#
# Table name: founders
#
#  id         :integer          not null, primary key
#  name       :string
#  imgae_url  :string
#  quote      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Founder < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
end
