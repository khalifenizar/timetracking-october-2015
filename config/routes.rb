Rails.application.routes.draw do

  get "/" => "site#home"
  get "/contact" => "site#contact"

  get "/baseball" => "baseball#description"

end
