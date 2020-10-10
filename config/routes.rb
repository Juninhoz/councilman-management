Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #
  #
  get '/projects', to: 'projects#index'
  get '/projects/new', to: 'projects#new'
  get '/projects/:id/edit', to: 'projects#edit'
  post '/projects/:id', to: 'projects#update'
  post '/projects', to: 'projects#create'

  root :to => 'application#index'
end
