Rails.application.routes.draw do
  get 'admin/index' => "admins#index"
  get "admin/login" => "admins#login"
  post "admin/login/create" => "admins#create"
  post "admin/create" =>"admins#create"
  post "users/login" =>"users#login"
  post "providers/login" => "providers#login"
  get "providers/login_screen" => "providers#login_screen"
  get 'providers/dashboard'
  post "providers/create" => "providers#create"
  post "users/create" => "users#create"  
  get 'users/dashboard' => "users#dashboard"
  root 'home#top'
  get 'home/top' => "home#top"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
