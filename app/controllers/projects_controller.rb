class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def new
  end

  def create
    Project.create(project_params)
    redirect_to projects_path
  end

  private

  def project_params
    params.permit(:title, :description)
  end
end
