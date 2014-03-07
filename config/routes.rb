SampleApp::Application.routes.draw do

	root :to => "pages#home"

	get '/about', to: 'pages#about'
	get '/contact', to: 'pages#contact'
	get '/help', to: 'pages#help'
	get "pages/home"
end
