Rails.application.routes.draw do
  resources :recipe_hashtags, only: [:index]

  get '/hello/revision' => RevisionPlate::App.new
end
