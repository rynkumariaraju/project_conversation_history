class ProjectsController < ApplicationController
  before_action :require_user, only: [:new, :create, :edit, :update, :change_status]
  before_action :set_project, only: [:show, :edit, :update, :change_status]

  def index
    @projects = Project.all
  end
  
  def show
    @comments = @project.comments.includes(:user) # Preload associated users
    @status_changes = @project.status_changes.includes(:user) # Preload associated users for status changes
  end
  
  

  def new
    @project = Project.new
  end

  def create
    @project = current_user.projects.new(project_params)
    if @project.save
      redirect_to @project, notice: 'Project created successfully'
    else
      render :new
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    if @project.update(project_params)
      redirect_to @project, notice: 'Project updated successfully.'
    else
      render :edit
    end
  end

  def destroy
    @project = Project.find_by(id: params[:id])
    if @project
      @project.destroy
      redirect_to projects_path, notice: 'Project was successfully deleted.'
    else
      redirect_to projects_path, alert: 'Project not found.'
    end
  end
  
  def change_status
    @project = Project.find(params[:id])
    previous_status = @project.status
  
    if @project.update(status: params[:status])
      StatusChange.create!(
        project: @project,
        user: current_user,
        previous_status: previous_status,
        new_status: @project.status
      )
      redirect_to @project, notice: 'Project status updated successfully.'
    else
      redirect_to @project, alert: 'Failed to update status.'
    end
  end
  
  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:title, :description, :status)
  end
end
