require 'rails_helper'

RSpec.describe Trait, :type => :model do
  # it { should validate_presence_of :name }
  it { should have_many :personal_traits }
  it { should have_many(:founders).through(:personal_traits) }
end
