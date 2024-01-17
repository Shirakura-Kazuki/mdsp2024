Rails.application.routes.draw do
  root to: 'account#m5test'

  namespace :api do
    namespace :v1 do
      post 'fingerprint/authenticate', to: 'fingerprint#authenticate'
    end
  end
end
