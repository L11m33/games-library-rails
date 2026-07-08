Rails.application.routes.draw do
  # Gry
  resources :games, only: [:index, :show] do
    # Zagnieżdżone trasy do tworzenia nowych wypożyczeń i recenzji
    resources :rentals, only: [:new, :create]
    resources :reviews, only: [:new, :create], shallow: true
  end

  # Strony z listą wszystkich wypożyczeń i recenzji
  resources :rentals, only: [:index]
  resources :reviews, only: [:index]

  # Strona główna
  root "games#index"
end
