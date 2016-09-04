Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  scope "/:locale" do
    
    
    get '/', to: 'welcome#index', as: 'welcome'
    get '/dashboard', to: 'welcome#dashboard', as: 'dashboard'
    
    resources :web_apps, path: 'webapps'

  end

  scope '/api' do
    scope '/v1' do
      
    end
  end
  root :to => "welcome#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
