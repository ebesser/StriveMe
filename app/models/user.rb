class User < ActiveRecord::Base

	has_many :comments

	after_create :send_welcome

	def send_welcome
		UserMailer.new_user(self).delver
	end

end
