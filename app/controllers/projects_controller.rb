class ProjectsController < ApplicationController
	def index
		@projects = Project.order(created_at: :desc)
						   .limit(10)
		render 'index'
	end

  # get '/projects/:id' => "projects#show"
  def show
    my_id = params[:id]

    @proj = Project.find_by(id: my_id)

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

  def edit
    project_find

    if @project == nil
      redirect_to("/404")
    else
      render('edit')
    end
  end

  def update
    project_find

    if @project.update(project_params)
      redirect_to("/projects/#{@project.id}")
    else
      render("edit")
    end
  end


  private

  def project_params
    params.require(:project).permit(:name, :description)
  end

  def project_find
    @project = Project.find_by(id: params[:id])
  end

end
