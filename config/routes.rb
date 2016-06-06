Rails.application.routes.draw do
  root 'surveys#index'

  # after user_input is processed, redirect_to: 
  get 'surveys/result' 

  post '/surveys' => 'surveys#create'

end
