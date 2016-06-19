Rails.application.routes.draw do

  
  root to: "pages#home"
  get 'hakkinda', to: "pages#about", as: :about
  get 'iletisim', to: "pages#contact", as: :contact
  get 'ratings/like', to: "ratings#like", as: :like
  get 'ratings/dislike', to: "ratings#dislike", as: :dislike

  devise_for :users
  
  resources :movies
  get 'users/:id', to: "users#show", as: :user_movies
  
end
