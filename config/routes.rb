Rails.application.routes.draw do

  get 'contacts/index'

  get 'contacts/new'

  get 'contacts/create'

  get "/" => "site#home"
  get "/contact" => "site#contact"

  get "/baseball" => "baseball#description"


  get "/projects" => "projects#index"
  get "/projects/:id" => "projects#show"
  get "/project/new" => "projects#new"
  post "/projects" => "projects#create"

  get "/projects/:project_id/entries" => "entries#index"
end
