Rails.application.routes.draw do
  post "users/login" =>"users/login"
  get 'providers/dashboard'
  post "providers/create" => "providers#create"
  post "users/create" => "users#create"
  get 'users/dashboard' => "users#dashboard"
  root 'home#top'
  get 'home/top' => "home#top"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
