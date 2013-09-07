ToDrink::Application.routes.draw do

  resources :places, only: [:index]

end
