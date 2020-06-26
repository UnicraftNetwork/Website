Rails.application.routes.draw do

  root 'application#index'

  devise_for :users, path: '/',
  path_names: {
      sign_in: 'login',
      sign_up: 'register'
  },
  controllers: {
      :confirmations => 'confirmations'
  }

  get 'contact'     => 'application#contact'

  get 'gallery'     => 'gallery#index'

  get 'rules'       => 'rules#index'
  get 'tos'         => 'rules#terms'
  get 'privacy'     => 'rules#privacy'

  get 'pgm'         => 'pgm#index'
  get 'stats'       => 'pgm#stats'

  get 'staff'       => 'staff#index'

  get 'towns'       => 'towns#index'

  get 'dashboard'   => 'dashboard#index'

  get 'shop'        => redirect('https://udecesports.buycraft.net/')
  get 'users'       => redirect('/')

  match '404', to: 'errors#not_found', via: :all
  match '422', to: 'errors#illegal', via: :all
  match '500', to: 'errors#internal_error', via: :all

  # Route for testing error pages
  # get 'error' => 'errors#illegal'

end
