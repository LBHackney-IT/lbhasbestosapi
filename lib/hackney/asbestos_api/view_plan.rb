module Hackney
  module AsbestosAPI
    class ViewPlan
      Response = Struct.new(:pdf_path2)

      def initialize(asbestos_gateway:)
        @asbestos_gateway = asbestos_gateway
      end

      def view(uprn)
        plan = asbestos_gateway.find_plan_by_uprn(uprn)
        Response.new(plan.pdf_path)
      end

      private

      attr_reader :asbestos_gateway
    end
  end
end
