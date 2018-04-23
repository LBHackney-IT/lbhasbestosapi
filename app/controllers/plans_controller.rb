class PlansController < ApplicationController
  def show
    render json: view_plan_use_case.view
  end

  private

  def view_plan_use_case
    Hackney::AsbestosAPI::ViewPlan.new
  end
end
