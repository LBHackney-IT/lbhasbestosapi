require_relative '../../../../lib/hackney/asbestos_api/view_plan'

RSpec.describe Hackney::AsbestosAPI::ViewPlan do
  context 'when viewing a plan' do
    let(:dummy_asbestos_gateway) do
      Hackney::AsbestosAPI::DummyAsbestosGateway.new
    end

    let(:view_plan_use_case) do
      described_class.new(asbestos_gateway: dummy_asbestos_gateway)
    end

    subject { view_plan_use_case.view('394848585') }

    it 'should have pdf path' do
      expect(subject.pdf_path).to eq('https://example.com/my.pdf?394848585')
    end
  end
end
