class UserMailer < ActionMailer::Base

	def user_created(user)
		@user = user
		mail(
			to:user.email,
			from: "services@gmail.com",
			subject: "Welcome To aMEliable!"
			)
	end

end