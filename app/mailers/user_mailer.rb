class UserMailer < ActionMailer::Base
  default from: "note@striveme.com"

  def mandrill_client
  	@mandrill_client ||= Mandrill::API.new ENV['MANDRILL_API_KEY']
  end


  def new_user(user)
  	template_name = "new-user"
  	template_content = []
  	message = {
  		to: [{email: user.email}],
  		subject: "Welcome! (from rails)",
  		merge_vars: [
  			{rcpt: user.email,
			vars:[
				{name: "USER_EMAIL", content: user.email},
        {name: "USER_ENCODED_URL", content: user.encoded_url}
				]
			}
  		]
  	}
  	mandrill_client.messages.send_template template_name, template_content, message

  end
end
