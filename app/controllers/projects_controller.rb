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
      render('show')
    end

  end
end
