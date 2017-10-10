Rails.application.routes.draw do
	match '/sums', :to => 'application#sums', :via => [:post]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
