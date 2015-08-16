Workjounral::Application.routes.draw do
 	get '/' => "comments#index"

	mount_griddler
end
