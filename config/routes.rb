Rails.application.routes.draw do
  get 'about' => 'topics#about'
  resources :topics do
    member do
      post 'upvote'
      post 'downvote'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'topics#index'
end
