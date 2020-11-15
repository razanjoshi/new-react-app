Rails.application.routes.draw do
  resources :hubs
  # root 'welcome#index'
  resources :hubs do
    match '/scrape', to: 'hubs#scrape', via: :post, on: :collection
  end

  root to: 'hubs#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
