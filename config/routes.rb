Rails.application.routes.draw do
  # root 'clients#index' 
  root 'contacts#new'
  resource :contacts
  # resources :clients
end
