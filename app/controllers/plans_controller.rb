class PlansController < ApplicationController
  def show
    render json: view_plan_use_case.view(params.fetch(:id))
  end

  private

  def view_plan_use_case
    Hackney::AsbestosAPI::ViewPlan.new(
      asbestos_gateway: Hackney::AsbestosAPI::DummyAsbestosGateway.new
    )
  end
end
