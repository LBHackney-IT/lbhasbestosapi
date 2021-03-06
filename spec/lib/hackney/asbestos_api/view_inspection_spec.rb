require_relative '../../../../lib/hackney/asbestos_api/view_plan'

RSpec.describe Hackney::AsbestosAPI::ViewInspection do
  context 'when viewing inspections' do
    let(:dummy_asbestos_gateway) do
      Hackney::AsbestosAPI::DummyAsbestosGateway.new
    end

    let(:view_inspection_use_case) do
      described_class.new(asbestos_gateway: dummy_asbestos_gateway)
    end

    subject { view_inspection_use_case.view('233453978') }

    it 'should have inspection data' do
      expect(subject.inspection_data).to eq("Inspection data about 233453978")
    end
  end
end

