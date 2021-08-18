Rails.application.routes.draw do
  root to: 'pages#index'
  match "*path", to: "pages#index", format: false, via: :get
end
