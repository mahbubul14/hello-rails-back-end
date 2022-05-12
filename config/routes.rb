Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      get 'messages', to: 'messages#index'
    end
  end
end
