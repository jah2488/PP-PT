class HomeController < ApplicationController
  before_filter :authenticate_user!, :only => :dashboard

  def index
  end

  def dashboard
    @projects = Project.for(current_user.id)
  end
end
