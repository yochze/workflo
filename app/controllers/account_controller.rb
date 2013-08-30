class AccountController < ApplicationController
	def edit
		@user = current_user
		
		if request.put?
      		@user.update_attributes(params[:user])
      		flash[:notice] = "Account data was successfully updated."
   		end
	end
end