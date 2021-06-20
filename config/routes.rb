Rails.application.routes.draw do
  resources :users, only: [:create, :index] do
    member do
      resources :sleep_records, only: :index
      post 'clock_in', to: 'clock_ins#create'
      post 'follow', to: 'follow_relationships#create'
      delete 'unfollow', to: 'follow_relationships#destroy'
      get 'followee_records', to: 'followee_sleeping_records#index'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
