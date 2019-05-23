Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :bloggers, except:[:destroy, :edit, :update]
  resources :destinations, only:[:show]
  resources :posts, only:[:new, :create, :show, :edit, :update]


end
