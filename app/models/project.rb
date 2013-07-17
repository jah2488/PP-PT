# == Schema Information
#
# Table name: projects
#
#  id          :integer          not null, primary key
#  name        :string(255)      not null
#  description :string(255)
#  tags        :string(255)
#  completed   :boolean          default(FALSE), not null
#  in_progress :boolean          default(FALSE), not null
#  created_at  :datetime
#  updated_at  :datetime
#

class Project < ActiveRecord::Base
  validates :name, :presence => true
end
