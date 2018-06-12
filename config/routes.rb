Rails.application.routes.draw do
  resources :short_urls
  root 'pages#home'
  get 'pages/home'
  get 'pages/short_url_not_found'
  scope ":url" do
    get '', to: 'short_urls#redirect_to_actual_url'
  end

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
