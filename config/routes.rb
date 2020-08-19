Rails.application.routes.draw do

  root 'application#index'

  devise_for :users, path: '/',
  path_names: {
      sign_in: 'login',
      sign_up: 'register'
  },
  controllers: {
      confirmations: 'confirmations',
      registrations: 'registrations'
  }

  get 'u' => 'errors#not_found'
  resources :users, path: 'u', param: :name

  mount Thredded::Engine => Forums::PATH

  get 'play'        => 'minecraft_servers#index'

  get 'contact'     => 'application#contact'

  get 'gallery'     => 'gallery#index'

  get 'rules'       => 'rules#index'
  get 'tos'         => 'rules#terms'
  get 'privacy'     => 'rules#privacy'

  get 'pgm'         => 'pgm#index'
  get 'stats'       => 'pgm#stats'

  get 'staff'       => 'staff#index'

  get 'towns'       => 'towns#index'

  get 'shop'        => redirect('https://udecesports.buycraft.net/')
  get 'ipverify'    => redirect('https://cyberdevelopment.es/BotSentry/verify/?lightMode=false&language=es&messagesTitle=Unicraft%20Network')

  match '404', to: 'errors#not_found', via: :all
  match '422', to: 'errors#illegal', via: :all
  match '500', to: 'errors#internal_error', via: :all

  # Route for testing error pages in the development environment
  # get 'error' => 'errors#illegal'

end
