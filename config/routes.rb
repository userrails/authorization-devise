Rails.application.routes.draw do

  devise_for :admins
  devise_for :users,:controllers => { :registrations => "registrations", :sessions => "sessions", :confirmations => "confirmations" }
  root :to => "homes#index"
  resources :homes, :only => :index

  namespace :user do 
    resources :homes
  end

  namespace :admin do 
    resources :homes
  end

  resources :articles
  
end