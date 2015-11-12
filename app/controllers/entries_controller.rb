class EntriesController < ApplicationController
  def index
    my_id = params[:project_id]

    @proj = Project.find_by(id: my_id)

    if @proj == nil
      redirect_to("/404")
    else
      @entries = @proj.entries

      render("index")
    end
  end

  def new
    my_id = params[:project_id]

    @proj = Project.find_by(id: my_id)
    @entr = @proj.entries.new

    render("new")
  end
  
  def create
    my_id = params[:project_id]
    @proj = Project.find_by(id: my_id)
    @entr = @proj.entries.new(entry_params)
    if @entr.save
      # redirect_to action: "index", controller: "entries", project_id: @proj.id
      redirect_to("/projects/#{@proj.id}/entries")
    else
      render('new')
    end
  end

  private

  def entry_params
    params.require(:entry).permit(:hours, :minutes, :date)
  end
end
