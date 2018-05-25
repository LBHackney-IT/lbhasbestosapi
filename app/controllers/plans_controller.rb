class PlansController < ApplicationController
 include Swagger::Blocks

  swagger_path '/plans/{id}' do
    operation :get do
      key :id, 'Plan ID'

      parameter do
        key :token, :code
      end
      response 200 do
        key :description, 'Success'
      end
      response 401 do
        key :description, 'Unauthorised'
      end
    end
  end

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
