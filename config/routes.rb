Workjounral::Application.routes.draw do
 	get '/' => "comments#index"

 	get "/email_processor", to: proc { [200, {}, ["OK"]] }, as: "mandrill_head_test_request"

	mount_griddler

	resources :users, param: :short_name, :short_name => /[\w.]+/
end
