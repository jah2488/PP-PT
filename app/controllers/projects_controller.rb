class ProjectsController < ResourceController

  private
  def permitted_params
    params.permit(:project => %i{user_id name description tags completed in_progress})
  end
end
