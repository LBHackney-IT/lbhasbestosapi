class InspectionsController < ApplicationController
    def show
    render json: view_inspection_use_case.view(params.fetch(:id))
  end

  private

  def view_inspection_use_case
    Hackney::AsbestosAPI::ViewInspection.new(
      asbestos_gateway: Hackney::AsbestosAPI::DummyAsbestosGateway.new
    )
  end
end
