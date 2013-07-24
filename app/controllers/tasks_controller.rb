class TasksController < ResourceController

  def create
    create! { dashboard_url }
  end

  private
  def permitted_params
    params.permit(:task => %i{project_id name description tags completed in_progress})
  end
end
