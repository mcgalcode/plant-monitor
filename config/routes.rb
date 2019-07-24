Rails.application.routes.draw do
  namespace 'api' do
    get 'points/', to: 'points#index'
    post 'points/', to: 'points#create'
  end
end