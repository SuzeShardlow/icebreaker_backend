Rails.application.routes.draw do

  scope :api do
    # resources :posts
    resources :users
    resources :comments
    resources :gatherings
    resources :meetupgroups


    post "/register", to: "authentications#register"
    post "/login", to: "authentications#login"
  end
end
