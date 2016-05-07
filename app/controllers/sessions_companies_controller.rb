class SessionsCompaniesController < ApplicationController
	before_action :block_access_company, except: [:destroy]
	def new
	end

	def create
		@company = Company.find_by(cnpj: params[:session][:cnpj])
		if @company && @company.authenticate(params[:session][:password])
			sign_in_company(@company)
			redirect_to current_company
		else
			flash[:error] = "Incorrect login or password"
			redirect_to sign_in_login_path
		end
	end
	
	def destroy
  	   sign_out_company
  	   redirect_to root_url
    end

end