class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  has_many :projects, :dependent => :destroy
  has_many :tasks,    :through => :projects
  has_many :actions,  :through => :tasks, :source => :action_items
end
