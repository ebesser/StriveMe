class User < ActiveRecord::Base

	has_many :comments

	# def to_param
 #  		name
	# end

end
