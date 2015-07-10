# == Schema Information
#
# Table name: personal_traits
#
#  id         :integer          not null, primary key
#  founder_id :integer
#  trait_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_personal_traits_on_founder_id  (founder_id)
#  index_personal_traits_on_trait_id    (trait_id)
#

class PersonalTrait < ActiveRecord::Base
  belongs_to :founder
  belongs_to :trait
end
