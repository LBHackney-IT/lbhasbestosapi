module Hackney
  module AsbestosAPI
    class ViewInspection
      Response = Struct.new(:inspection_data)

      def initialize(asbestos_gateway:)
        @asbestos_gateway = asbestos_gateway
      end

      def view(uprn)
        inspection = asbestos_gateway.find_inspection_by_uprn(uprn)
        Response.new(inspection.inspection_data)
      end

      private

      attr_reader :asbestos_gateway
    end
  end
end
