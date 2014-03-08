SampleApp::Application.routes.draw do

  	resources :users
  	
	root :to => "pages#home"
	get '/signup', to: 'users#new'
	get '/about', to: 'pages#about'
	get '/contact', to: 'pages#contact'
	get '/help', to: 'pages#help'
	get "pages/home"
end
