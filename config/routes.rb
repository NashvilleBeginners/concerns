Rails.application.routes.draw do
  resources :products
  resources :companies

  # custom error routes
  match '/404' => 'errors#not_found'            , :via => [:get, :post]
  match '/422' => 'errors#unprocessable_entity' , :via => [:get, :post]
  match '/500' => 'errors#application_error'    , :via => [:get, :post]
end
