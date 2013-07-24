class ActionItemsController < ResourceController

  def create
    create! { dashboard_url }
  end

  private
  def permitted_params
    params.permit(:action_item => %i{task_id name description tags completed in_progress})
  end
end
