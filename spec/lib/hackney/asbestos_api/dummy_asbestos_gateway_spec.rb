require_relative '../../../../lib/hackney/asbestos_api/dummy_asbestos_gateway'

RSpec.describe Hackney::AsbestosAPI::DummyAsbestosGateway do
  context 'when retrieving plans' do
    subject { described_class.new.find_plan_by_uprn('3423432') }

    it 'should return a pdf path' do
      expect(subject.pdf_path).to eq('https://example.com/my.pdf?3423432')
    end
  end
end
