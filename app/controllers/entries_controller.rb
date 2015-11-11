class EntriesController < ApplicationController
  def index
    my_id = params[:id]

    @proj = Project.find_by(id: my_id)

    if @proj == nil
      redirect_to("/404")
    else
      @entries = @proj.entries

      render("index")
    end
  end
end
