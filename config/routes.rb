Rails.application.routes.draw do

  namespace :api, :defaults => { :format => 'json' } do
    resources :coaches
  end

  root to: 'pages#index'
  match "*path", to: "pages#index", format: false, via: :get


end
