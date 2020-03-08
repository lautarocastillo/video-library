Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    get  'library/(:type)', to: 'library#index'
    get  'user/library',    to: 'users#library'
    post 'user/purchase',   to: 'users#purchase'
  end
end
