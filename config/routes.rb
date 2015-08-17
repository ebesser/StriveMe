Workjounral::Application.routes.draw do
 	get '/' => "comments#index"

	mount_griddler

	resources :users, param: :short_name
end
