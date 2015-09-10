Workjounral::Application.routes.draw do
 	get '/' => "comments#index"

 	get "/email_processor", to: proc { [200, {}, ["OK"]] }, as: "mandrill_head_test_request"

	mount_griddler

	get '/thanks' => "users#thanks"

	resources :users, param: :encoded_url
end
