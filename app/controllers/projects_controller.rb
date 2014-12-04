class ProjectsController < ApplicationController
  def new
    @project = Project.new
  end

  def create
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
  
  end

  def show
  end

  private
  def project_params
    params.require(:project).permit(:title, :description, rewards_attributes: [:id, :amount, :description, :_destroy])
  end
end
