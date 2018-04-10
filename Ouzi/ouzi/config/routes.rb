Rails.application.routes.draw do
	root "landing#home"
	
	get "/", to: "landing#home"

	get "/book", to: "landing#book"

	get "/issues", to: "landing#issues"

	get "/about", to: "landing#about"

	resources :contacts, only: [:new,:create]
	
	resources :landing
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
