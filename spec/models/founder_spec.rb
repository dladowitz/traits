require 'rails_helper'

describe Founder do
  it { should validate_presence_of   :name }
  it { should validate_uniqueness_of :name }
  it { should have_many(:traits).through(:personal_traits) }
  it { should have_many(:personal_traits) }
end
