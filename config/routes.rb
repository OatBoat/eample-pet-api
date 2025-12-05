Rails.application.routes.draw do

  post "/pets" => "pets#create"

  post "/users" => "users#create"

end
