Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'recipes', to: "recipes#index"

  get '/hello/revision' => RevisionPlate::App.new
end
