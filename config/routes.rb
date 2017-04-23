Rails.application.routes.draw do

  resources :schedules
  root 'static_pages#home'

  get 'static_pages/home'

  get 'static_pages/tour'

  get 'static_pages/contact'

  get 'static_pages/pricing'

  get 'static_pages/testimonials'
  get ':name', to: 'entities#listf'

  devise_for :users

  resources :advertisers
  resources :fields
  resources :entities
  resources :contacts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
