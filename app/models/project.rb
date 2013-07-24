class Project < ActiveRecord::Base
  validates :user_id, :presence => true
  validates :name, :presence => true
  belongs_to :user
  has_many :tasks
  has_many :actions, :through => :tasks, :source => :action_items
  scope :for, lambda { |id| where(:user_id => id) }

  def progress
    return 0 if tasks.empty?
    ((completed_task_count.to_f / tasks.count.to_f) * 100).to_i
  end

  private
  def completed_task_count
    tasks.where(:completed => true).count
  end
end
