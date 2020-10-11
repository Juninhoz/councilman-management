class ProjectsController < ApplicationController
  before_action :set_project, only: %i[update edit]

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    Project.create(project_params)
    redirect_to projects_path
  end

  def edit; end

  def update
    @project.update(project_params)
    redirect_to projects_path
  end

  private

  def set_project
    @project = Project.find(params['id'])
  end

  def project_params
    params.require(:project).permit(:title, :description)
  end
end
