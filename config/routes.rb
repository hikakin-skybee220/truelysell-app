Rails.application.routes.draw do
  get 'password_resets/new'
  get 'password_resets/edit'
  post "/logout" => "home#logout"
  get 'admin/index' => "admins#index"
  get "admin/login" => "admins#login"
  post "admin/login/create" => "admins#create"
  post "admin/create" =>"admins#create"
  post "providers/login" => "providers#login"
  get "providers/login_screen" => "providers#login_screen"
  get 'providers/dashboard' => "providers#dashboard"
  post "providers/create" => "providers#create"
  post "users/confirm" => "users#confirm"
  get "users/password_forgot" => "users#password_forgot"
  post "users/login" =>"users#login"
  post "users/create" => "users#create"  
  get 'users/dashboard' => "users#dashboard"
  root 'home#top'
  get 'home/top' => "home#top"

  # get 'edit_account_activation_url' => "account_activations#edit"
  
  # resources :account_activations, only: [:edit]
  # resources :password_resets, only: [new, :create, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
