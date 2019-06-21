Rails.application.routes.draw do

  resources :artists, :genres, :songs, only: [:index, :show, :new, :create, :edit, :update]

  get 'songs/new'

  get 'songs/create'

  get 'songs/edit'

  get 'songs/update'

  get 'songs/index'

  get 'songs/show'

  get 'genre/new'

  get 'genre/create'

  get 'genre/edit'

  get 'genre/update'

  get 'genre/index'

  get 'genre/show'

  get 'artist/new'

  get 'artist/create'

  get 'artist/edit'

  get 'artist/update'

  get 'artist/index'

  get 'artist/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
