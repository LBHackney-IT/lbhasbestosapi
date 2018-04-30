module Hackney
  module AsbestosAPI
    class DummyAsbestosGateway
      Plan = Struct.new(:pdf_path)
      Inspection = Struct.new(:inspection_data)

      def find_plan_by_uprn(uprn)
        Plan.new("https://example.com/my.pdf?#{uprn}")
      end

      def find_inspection_by_uprn(uprn)
        Inspection.new("Inspection data about #{uprn}")
      end
    end
  end
end
