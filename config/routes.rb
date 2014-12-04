Rails.application.routes.draw do

  devise_for :admins
  devise_for :users,:controllers => { :registrations => "registrations", :sessions => "sessions" }
  root :to => "homes#index"
  resources :homes, :only => :index

  namespace :user do 
    resources :homes
  end

  namespace :admin do 
    resources :homes
  end
  
end