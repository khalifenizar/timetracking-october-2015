class ProjectsController < ApplicationController
	def index
		@projects = Project.order(created_at: :desc)
						   .limit(10)
		render 'index'
	end

  # get '/projects/:id' => "projects#show"
  def show
    id = params[:id]

    @proj = Project.find_by(id: id)

    if @proj == nil
      redirect_to("/404")
    else
      render 'show', layout: 'personal_layout'
    end

  end

  def new
    render 'new'
  end

  def create
    project = Project.new(project_params)
    if project.save
      redirect_to('/projects')
    end
  end

  private

  def project_params
    params.require(:project).permit(:name, :description)
  end

end
