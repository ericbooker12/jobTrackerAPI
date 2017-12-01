Rails.application.routes.draw do
	resources :jobs do
		resources :notes
	end
end
