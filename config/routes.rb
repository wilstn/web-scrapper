Rails.application.routes.draw do
  root 'items#index'

  resources :items

  get 'scrape', to: 'items#scrape'

end
