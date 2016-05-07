class SessionsController < ApplicationController
	before_action :block_access, except: [:destroy]
	def new
	end

	def create
		@user = User.find_by(login: params[:session][:login])
		if @user && @user.authenticate(params[:session][:password])
			sign_in(@user)
			redirect_to current_user
		else
			flash[:error] = "Incorrect login or password"
			redirect_to sign_in_login_path
		end
	end
	
	def destroy
  	   sign_out
  	   redirect_to root_url
    end

end
