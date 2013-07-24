class ResourceController < InheritedResources::Base
  before_filter :authenticate_user!

  def create
    create! { dashboard_path }
  end

end
