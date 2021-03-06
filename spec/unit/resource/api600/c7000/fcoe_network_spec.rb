require 'spec_helper'

RSpec.describe OneviewSDK::API600::C7000::FCoENetwork do
  include_context 'shared context'

  it 'inherits from OneviewSDK::API500::C7000::FCoENetwork' do
    expect(described_class).to be < OneviewSDK::API500::C7000::FCoENetwork
  end
  describe '#initialize' do
    it 'sets the defaults correctly' do
      item = described_class.new(@client_600)
      expect(item[:type]).to eq('fcoe-networkV4')
      expect(item[:connectionTemplateUri]).to eq(nil)
    end
  end
end
