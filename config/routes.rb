Rails.application.routes.draw do
  get 'clock_ins/index'
  get 'clock_ins/show'
  get 'clock_ins/new'
  get 'clock_ins/create'
  get 'clock_ins/edit'
  get 'clock_ins/update'
  get 'clock_ins/destroy'
  get 'sleep_records/index'
  get 'sleep_records/show'
  get 'sleep_records/new'
  get 'sleep_records/create'
  get 'sleep_records/edit'
  get 'sleep_records/update'
  get 'sleep_records/destroy'
  resources :users, only: [:create, :index] do
    member do
      resources :sleep_records, only: :index
      post 'clock_in', to: 'clock_ins#create'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
