Rails.application.routes.draw do
  resources :haunted_houses, only: [:show] do
    resources :monsters, only: [:new, :create]
  end
  resources :monsters, only: [:destroy] do
    resources :curses, only: [:new, :create]
  end
end

# As a user I can add a curse to a monster
# get 'monsters/:monster_id/curses/new', to: 'curses#new', as: :new_curse
# post 'monsters/:monster_id/curses', to: 'curses#create', as: :monster_curses

# As a user I can see one haunted house's monsters
# As a user I can add a monster in a haunted house
# get 'haunted_houses/:haunted_house_id/monsters/new'
# post 'haunted_houses/:haunted_house_id/monsters'

# As a user I can kill/remove/free a monster
