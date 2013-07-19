require 'spec_helper'

describe Project do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:user_id) }
  it { should belong_to(:user) }
  it { should have_many(:tasks) }
  it { should have_many(:actions).through(:tasks) }

end
