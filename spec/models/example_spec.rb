require 'rails_helper'

RSpec.describe Example, type: :model do
  describe 'Associations' do
  end

  describe 'Attributes' do
    describe '#name' do
      it { is_expected.to validate_presence_of(:name) }
    end
  end

  describe '#foo_bar' do
    it 'raises not implemented error' do
      expect { Example.new.foo_bar }.to raise_error(NotImplementedError)
    end
  end

  describe '#nationality' do
    subject(:example) { create(:example) }
    let(:nationality_stub_req) do
      stub_request(:get, 'https://example.com/api/nationality').with(query: { name: example.name })
    end

    context 'API returns valid response' do
      subject { example.nationality }
      before { nationality_stub_req.to_return file_fixture('example.txt').read }
      it 'returns non-empty nationality string' do
        expect(subject).to be_kind_of(String)
        expect(subject).to eq 'Japanese'
      end
    end

    context 'API returns invalid response' do
      subject { example.nationality }
      before { nationality_stub_req.to_return file_fixture('example_error.txt').read }
      it 'returns empty string' do
        expect(subject).to eq ''
      end
    end
  end
end
