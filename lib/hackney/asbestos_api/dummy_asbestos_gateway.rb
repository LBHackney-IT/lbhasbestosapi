module Hackney
  module AsbestosAPI
    class DummyAsbestosGateway
      Plan = Struct.new(:pdf_path)

      def find_plan_by_uprn(uprn)
        Plan.new("https://example.com/my.pdf?#{uprn}")
      end
    end
  end
end
