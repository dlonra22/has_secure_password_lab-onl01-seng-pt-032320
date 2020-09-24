Rails.application.routes.draw do
  post 'sessions/create' => 'sessions#create'

  get 'users/homepage'=> 'users#welcome'

  post 'users/create' => 'users#create'

  get 'users/new' => 'users#new'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
