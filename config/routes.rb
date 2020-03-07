Rails.application.routes.draw do
  resources :students, only: [:create, :show, :new, :edit]
  resources :school_classes, only: [:create, :show, :new, :edit]
end
