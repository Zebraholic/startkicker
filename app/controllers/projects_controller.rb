class ProjectsController < ApplicationController
  
def index
  @projects = Project.all
  end

  def new
    @project = Project.new
    @project.rewards.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to projects_url
    else
      render 'new'
    end
  end


  def update
  end

  def edit
  end

  def destroy
  end

  

  def show
  end

  private
  def project_params
    params.require(:project).permit(:title, :description, :start_date, :end_date, rewards_attributes: [:amount, :description])
  end
end
