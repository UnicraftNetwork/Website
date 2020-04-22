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

  # Image gallery
  get 'gallery' => 'gallery#index'

  # Medieval Secrets
  get 'medievo' => 'el_medievo#index'

  get '/404', to: "errors#not_found"
  get '/422', to: "errors#unacceptable"
  get '/500', to: "errors#server_error"
end
