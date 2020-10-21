require 'rails_helper'

describe ProjectsController, '#update', type: [:controller], slow: true do
  context 'When pass valid params' do
    let(:project) { Project.create(title: 'Titulo', description: 'Descricao') }
    let(:update_params) do
      { title: 'Titulo de projeto', description: 'Descricao do projeto' }
    end

    before do
      update_params
      put :update, params: { id: project.id, project: update_params }
    end

    it 'Should be updated' do
      project.reload
      expect(project.title).to eq(update_params[:title])
      expect(project.description).to eq(update_params[:description])
    end

    it 'Expect the 302 status' do
      expect(response.status).to eq 302
    end

    it 'Should return to projects index' do
      expect(response).to redirect_to projects_path
    end
  end
end
