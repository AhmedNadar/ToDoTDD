class Todo < ActiveRecord::Base
	default_scope { order('created_at DESC') }
	

	def user=(new_user)
		self.owner_email = new_user.email
	end
end
