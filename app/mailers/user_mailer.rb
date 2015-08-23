class UserMailer < ActionMailer::Base

	def user_created(user)
		@user = user
		mail(
			to:user.email,
			subject: "Welcome To aMEliable!"
			)
	end

end