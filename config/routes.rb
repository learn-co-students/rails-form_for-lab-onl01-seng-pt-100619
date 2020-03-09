Rails.application.routes.draw do
  resources :students, only: [:create, :show, :new, :edit, :update]
  patch 'students/:d', to: 'students#update'
  
  resources :school_classes, only: [:create, :show, :new, :edit, :update]
  patch 'school_classes/:id', to: 'school_classes#update'
end
