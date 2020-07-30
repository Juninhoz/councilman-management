Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #
  #
  get '/projects', to: 'projects#index'
  get '/projects/new', to: 'projects#new'
  post '/projects/create', to: 'projects#create'
end
