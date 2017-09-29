Rails.application.routes.draw do
  root to: 'animals#index'
  get '/animals', to: 'animals#index', as: 'animals'
  get 'animals/new', to: 'animals#new', as: 'new_animal'
  get 'animals/:id', to: 'animals#show', as: 'show_animal'
  post 'animals', to: 'animals#create', as: 'create_animal'
end
