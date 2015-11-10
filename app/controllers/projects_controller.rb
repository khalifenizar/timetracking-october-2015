class ProjectsController < ApplicationController
	def index
		@projects = Project.order(created_at: :desc)
						   .limit(10)
		render 'index'
	end

  # get '/projects/:id' => "projects#show"
  def show
    id = params[:id]

    @proj = Project.find(id)

    render('show')
  end
end
