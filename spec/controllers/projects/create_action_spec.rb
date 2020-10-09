require 'rails_helper'

describe ProjectsController, '#create', type: [:controller], slow: true do

  context 'When pass valid params' do

    let(:params) do
      { project: { title: 'Titulo de projeto', description: 'Descricao do projeto' } }
    end

    before do
      params
      post :create, params: params 
    end

    it 'Should be created' do
      expect(Project.all.count).to eq 1
    end

    it 'Expect the 302 status' do
      expect(response.status).to eq 302
    end

    it 'Should return to projects index' do
      expect(response).to redirect_to projects_path
    end
  end
end
