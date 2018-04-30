module Hackney
  module AsbestosAPI
    class ViewInspection
      Response = Struct.new(:inspection_data)

      def initialize(asbestos_gateway:)
        @asbestos_gateway = asbestos_gateway
      end

      def view(uprn)
        Response.new('some inspection data in json')
      end
    end
  end
end
