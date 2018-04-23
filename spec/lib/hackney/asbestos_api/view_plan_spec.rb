require_relative '../../../../lib/hackney/asbestos_api/view_plan'

RSpec.describe Hackney::AsbestosAPI::ViewPlan do
  context 'when viewing a plan' do
    subject { described_class.new.view }

    it 'should have pdf path' do
      expect(subject.pdf_path).to eq('https://example.com/my.pdf')
    end
  end
end
