Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/tasks", to: "tasks#index", as: :tasks #all

  get "/tasks/new", to: "tasks#new", as: :new_task
  post "/tasks", to: "tasks#create"

  get "/tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "/tasks/:id", to: "tasks#update"

  get "/tasks/:id", to: "tasks#show", as: :task #une seule

  delete "/tasks/:id", to: "tasks#destroy"
end
