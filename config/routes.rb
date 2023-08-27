Rails.application.routes.draw do
  namespace 'get_data' do
    namespace 'default' do
      resources :users, only: [:index]
    end

    namespace 'custom' do
      resources :generator, only: [:index]
    end
  end
end
