Rails.application.routes.draw do

  root to: "homes#top"
  devise_for :users

  get '/homes/about' => 'homes#about', as: 'about'
  
  devise_scope :uesr do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :books, only: [:index, :show, :edit]
  resources :users, only: [:index, :show, :edit]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
