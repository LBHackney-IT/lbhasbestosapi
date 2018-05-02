require_relative '../../../../lib/hackney/asbestos_api/dummy_asbestos_gateway'

RSpec.describe Hackney::AsbestosAPI::DummyAsbestosGateway do
  context 'when retrieving plans' do
    subject { described_class.new.find_plan_by_uprn('3423432') }

    it 'should return a pdf path' do
      expect(subject.pdf_path).to eq('https://example.com/my.pdf?3423432')
    end
  end

  context 'when retrieving inspections' do
    subject {described_class.new.find_inspection_by_uprn('21323123') }

    it 'should return inspection data' do
      expect(subject.inspection_data).to eq('Inspection data about 21323123')
    end
  end
end
