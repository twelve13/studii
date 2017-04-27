Rails.application.routes.draw do

	root to: "boards#index"

	resources :boards do
		resources :posts do
			resources :notes
		end
	end
end
