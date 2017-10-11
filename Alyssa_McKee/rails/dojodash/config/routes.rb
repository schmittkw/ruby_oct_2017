Rails.application.routes.draw do
  get 'dojos' => 'dojos#index'
  post 'dojos' => 'dojos#create'
  get 'dojos/new' => 'dojos#new'
  
end
