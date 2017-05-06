Rails.application.routes.draw do
	get "/", to: "landing#home"

	get "/book", to: "landing#book"
	
	resources :landing
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
