Rails.application.routes.draw do

  resources :gens, only: [:index,:new,:create,:edit,:destroy] do   
    collection do  
      post :confirm
    end
  end
  
  root 'gens#index'
  
end