Rails.application.routes.draw do

  devise_for :users
  root 'static_pages#home'

  get 'static_pages/home'
  get 'static_pages/tour'
  get 'static_pages/contact'
  get 'static_pages/pricing'
  get 'static_pages/testimonials'


  resources :entities
  resources :contacts
  resources :advertisers
  resources :pitches do
    resources :schedules
  end


get '/horarios', to: 'pitches#get_schedule'
post '/horarios', to: 'pitches#set_schedule'
get ':name', to: 'entities#listf'
  # Aquí es donde objento el JSON de cada horario

end
