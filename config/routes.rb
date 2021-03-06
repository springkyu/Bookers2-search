Rails.application.routes.draw do
  get 'searches/search'
  devise_for :users, controllers: {
    sessions: 'devise/sessions',
    registrations: 'devise/registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#top'
  get "/home/about" => "homes#about"
  resources :books
  resources :users
  get "/search" => "searches#search"

end
