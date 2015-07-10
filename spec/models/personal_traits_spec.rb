require 'rails_helper'

RSpec.describe PersonalTrait, :type => :model do
  it { should belong_to :founder }
  it { should belong_to :trait }
end
