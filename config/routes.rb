Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/students" => "students#index"

  get "/students/:id" => "students#show"

  post "/students" => "students#create"

  patch "/students/:id" => "students#update"

  delete "/students/:id" => "students#destroy"

  get "/currentuser" => "users#show_current_user"
end
