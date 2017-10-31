Rails.application.routes.draw do
  resources :offers
  resources :venues



    get 'home/results' => 'home#results', :as => :results

    get 'home/index'


  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "home#index"

end
