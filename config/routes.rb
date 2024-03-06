Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  
  namespace :api do
    namespace :v1 do
      get '/videos/:id', to: 'videos#show'
    end
  end

end
