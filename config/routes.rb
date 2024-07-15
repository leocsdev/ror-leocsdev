Rails.application.routes.draw do
  root "static_pages#index"

  get "/about", to: "static_pages#about"

  resources :blog_posts, path: "blog-posts"
end
