Rails.application.routes.draw do
  resources :hubs
  # root 'welcome#index'
  resources :hubs do
    put 'hubs/:id' => 'hubs#update'
    match '/scrape', to: 'hubs#scrape', via: :post, on: :collection
  end

  root to: 'hubs#index'

  get '*path', to: 'pages#index', via: :all
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
