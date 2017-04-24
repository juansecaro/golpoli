Rails.application.routes.draw do

  root 'static_pages#home'

  get 'static_pages/home'

  get 'static_pages/tour'

  get 'static_pages/contact'

  get 'static_pages/pricing'

  get 'static_pages/testimonials'

  get ':name', to: 'entities#listf'

  # Aquí es donde objento el JSON de cada horario
  #get '/horarios', to: 'fields#get_schedule'

  devise_for :users

  resources :entities do
  resources :contacts
  resources :advertisers
  resources :fields do
    resources :schedule
    end
  end

end
