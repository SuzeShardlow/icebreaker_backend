Rails.application.routes.draw do

  scope :api do
    # resources :posts
    resources :users
    resources :groups
    resources :comments
    resources :events

    post "/register", to: "authentications#register"
    post "/login", to: "authentications#login"
  end
end
