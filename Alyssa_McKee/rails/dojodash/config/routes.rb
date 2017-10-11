Rails.application.routes.draw do
  get 'dojos' => 'dojos#index', as: "landing"
  post 'dojos' => 'dojos#create'
  get 'dojos/new' => 'dojos#new'
  
  
  get 'dojos/:id' => 'dojos#show'
  patch 'dojos/:id' => 'dojos#update'
  get 'dojos/:id/edit' => 'dojos#edit'
  delete 'dojos/:id/destroy' => 'dojos#destroy'
end
