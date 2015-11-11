Rails.application.routes.draw do

  get 'contacts/index'

  get 'contacts/new'

  get 'contacts/create'

  get "/" => "site#home"
  get "/contact" => "site#contact"

  get "/baseball" => "baseball#description"

  resources :projects do
    resources :entries
  end
end
