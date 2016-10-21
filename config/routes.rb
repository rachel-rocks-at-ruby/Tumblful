Tumblful::Application.routes.draw do
  resources :posts

  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  authenticated :user do
    resources :follows, :except => [:new, :edit, :show, :update]
    root :to => 'follows#index', :as => :user_root
  end

  resources :image_links
  resources :text_posts

  # You can have the root of your site routed with "root"
  root :to => 'home#index'

end
