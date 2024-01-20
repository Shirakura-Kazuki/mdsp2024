Rails.application.routes.draw do
  root to: 'account#m5test'

  get 'login_d', to: 'account#login_d'
  get 'login', to: 'account#login'

  namespace :api do
    namespace :v1 do
      get 'fingerprint/authenticate', to: 'fingerprint#authenticate'
      post 'fingerprint/status', to: 'fingerprint#status'
    end
  end
end
