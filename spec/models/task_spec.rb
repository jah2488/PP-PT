require 'spec_helper'

describe Task do
  it { should belong_to(:project) }
  it { should have_many(:actions).class_name(ActionItem) }
end
