Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/experiences" => "experiences#index"

  post "/experiences" => "experiences#create"

  patch "/experiences/:id" => "experiences#update"

  delete "/experiences/:id" => "experiences#destroy"
end
