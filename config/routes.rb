ToDrink::Application.routes.draw do

  resources :places, only: [:index] do
    resources :reports, only: [:index], on: :member
  end

end
