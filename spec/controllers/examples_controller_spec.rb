require 'rails_helper'

RSpec.describe ExamplesController, type: :controller do
  let(:example) { create(:example) }

  let(:valid_attributes) do
    { name: 'Testing' }
  end

  let(:invalid_attributes) do
    { name: '' }
  end

  describe 'GET #index' do
    it 'returns a success response' do
      get :index, params: {}
      expect(response).to be_successful
    end
  end

  describe 'GET #new' do
    it 'returns a success response' do
      get :new, params: {}
      expect(response).to be_successful
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Example' do
        expect do
          post :create, params: { example: valid_attributes }
        end.to change(Example, :count).by(1)
      end

      it 'redirects to the example list' do
        post :create, params: { example: valid_attributes }
        expect(response).to redirect_to(examples_path)
      end
    end

    context 'with invalid params' do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: { example: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end
end
