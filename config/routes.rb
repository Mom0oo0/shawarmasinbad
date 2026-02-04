Rails.application.routes.draw do
  # Admin Routes
  get '/admin', to: 'admin#dashboard', as: :admin_dashboard
  get '/admin/login', to: 'admin#login', as: :admin_login
  post '/admin/login', to: 'admin#create_session'
  get '/admin/logout', to: 'admin#logout', as: :admin_logout
  
  namespace :admin do
    resources :menu_items
    resources :business_hours, only: [:index, :edit, :update]
  end

  scope "(:locale)", locale: /en|fr|ar/ do
    root "pages#home"
    get "/menu", to: "pages#menu"
    get "/order", to: "pages#order"
    get "/history", to: "pages#history"
    get "/gallery", to: "pages#gallery"
    get "/contact", to: "pages#contact"
  end
end
