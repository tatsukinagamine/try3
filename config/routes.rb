Rails.application.routes.draw do

  resources :gens, only: [:index,:new,:create,:edit,:update,:destroy] do   
    collection do  
      post :confirm
    end
  end
  
  root 'gens#index'
  
end