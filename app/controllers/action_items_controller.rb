class ActionItemsController < ResourceController
  private
  def permitted_params
    params.permit(:project => %i{name description tags completed in_progress})
  end
end
