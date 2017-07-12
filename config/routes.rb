Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "" => "users#index"
  post "sign_in" => "users#sign_in"
  get "wall" => "wall#index"
  post "wall/new_message" => "wall#create_message"
  post "wall/new_comment" => "wall#create_comment"
  get "logout" => "users#logout"
end
