Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "about-us", to: "about#index", as: :about # This line is an example of redefining a route name without changing everything else.
  root to: "home#index"
end
