AssetsSkeleton::Application.routes.draw do

  root :to => "home#index"
  resources :tools, only: [:create, :show, :index, :update, :destroy, :delete]

end
