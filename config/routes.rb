# Various application routes to different the web sections
Rails.application.routes.draw do

  # Landing page
  root 'public#index'

  # Rules
  get 'rules' => 'rules#index'

  # Terms of Service (TOS) & Privacy policies
  get 'tos' => 'tos#index'
  get 'privacy' => 'tos#privacy'

  # Staff page
  get 'staff' => 'staff#index'

  # Placeholder view so clicking on staff heads doesn't overload the database
  get 'profiles' => 'profiles#index'

  # Image gallery
  get 'gallery' => 'gallery#index'

  # Medieval Secrets
  get 'medievo' => 'el_medievo#index'

  # Contact
  get 'contact' => 'application#contact'

  # Towns
  get 'towns' => 'towns#index'

  # PGM
  get 'pgm' => 'pgm#index'
  get 'stats' => 'pgm_players#index'

  # Shop re-direct
  get "/shop" => redirect("https://udecesports.buycraft.net/")

  match '/404', to: 'errors#not_found', via: :all
  match '/422', to: 'errors#illegal', via: :all
  match '/500', to: 'errors#internal_server_error', via: :all

end
