class ProjectsController < ApplicationController
  def index
    @duda = 'dudinha'
  end

  def new
  end

  def create
    @titulo = params["title"]
    @descricao = params["description"]
  end
end
