Rails.application.routes.draw do
	get "/", to: "landing#home"

	get "/book", to: "landing#book"

	get "/issues", to: "landing#issues"

	get "/contact", to: "messages#new"

	post "/contact", to: "messages#create"
	
	resources :landing
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
