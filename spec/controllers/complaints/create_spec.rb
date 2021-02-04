require 'rails_helper'

describe ComplaintsController, '#create', type: [:controller], slow: true do
  context 'When pass valid params' do
    let(:user) { create(:user) }
    let(:params) do
      {
        complaint: {
          title: 'O lan eh lindo',
          description: 'O lan eh fera demais'
        }
      }
    end

    before do
      user
      post :create, params: params
    end

    it 'should create a new complaint' do
      expect(Complaint.all.count).to eq 1
    end
  end
end
