Rails.application.routes.draw do
  resources :haunted_houses, only: [:show] do
    resources :monsters, only: [:new, :create]
  end
  resources :monsters, only: [:destroy]
end


# As a user I can see one haunted house's monsters
# As a user I can add a monster in a haunted house
# get 'haunted_houses/:haunted_house_id/monsters/new'
# post 'haunted_houses/:haunted_house_id/monsters'

# As a user I can kill/remove/free a monster
