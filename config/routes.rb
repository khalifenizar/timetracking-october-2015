Rails.application.routes.draw do

  get 'contacts/index'

  get 'contacts/new'

  get 'contacts/create'

  get "/" => "site#home"
  get "/contact" => "site#contact"

  get "/baseball" => "baseball#description"

  # /projects/1/entries/7/edit
  # /projects/50/entries/35/edit
  # get "/projects/:project_id/entries/:id/edit" => "entries#edit"
  # put "/projects/:project_id/entries/:id" => "entries#update"
  # patch "/projects/:project_id/entries/:id" => "entries#update"

  # get "/projects/:id/edit" => "projects#edit"

  # delete "/projects/:project_id/entries/:id" => "entries#destroy"

  resources :projects do
    resources :entries
  end
end
