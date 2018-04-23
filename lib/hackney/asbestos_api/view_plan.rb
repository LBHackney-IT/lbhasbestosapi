module Hackney
  module AsbestosAPI
    class ViewPlan
      Response = Struct.new(:pdf_path)

      def view
        Response.new('https://example.com/my.pdf')
      end
    end
  end
end
