Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/fridges', to: 'fridges#index'

  get '/fridges/new', to: 'fridges#new'

  post '/fridges', to: 'fridges#create'

  get '/fridges/food', to: 'foods#index'

  get '/fridges/food/new', to: 'foods#new'

  post '/fridges/food', to: 'foods#create'

end
