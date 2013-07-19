require 'spec_helper'

describe ActionItem do
  it { should belong_to(:task) }
end
