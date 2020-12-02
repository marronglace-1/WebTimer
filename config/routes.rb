Rails.application.routes.draw do
  get "/" => "home#top"

  get "users/new" => "users#new"
  post "users/create" => "users#create"

  get "login" => "users#login_form"
  post "login" => "users#login"
  post "logout" => "users#logout"

  get "users/timer" => "users#timer"
  get "users/statistics" => "users#statistics"

  get "users/show" => "users#show"
  get "users/content_show" => "users#content_show"

  post "users/users_update" => "users#users_update"
  post "users/content_update" => "users#content_update"

  get "users/withdraw" => "users#withdraw"
  get "users/content_delete" => "users#content_delete"

  post "users/users_destroy" => "users#users_destroy"
  post "users/content_destroy" => "users#content_destroy"
  
  mount ActionCable.server => "/cable"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
