Rails.application.routes.draw do

  get 'welcome/index'
  get 'products/new'
  post 'products' => 'products#create'
  get 'products/:id' => 'products#show'
  get 'products' => 'products#index'
  get "products/:id/edit" => "products#edit"
  put "products/:id" => "products#update"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
