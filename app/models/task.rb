class Task < ActiveRecord::Base
  belongs_to :project
  has_many :actions, :class_name => ActionItem
end
