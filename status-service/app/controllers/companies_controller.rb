class CompaniesController < ApplicationController
	def new
		@company = Company.new
	end

	def create
		@company = Company.new(user_params)
		if @company.save
			redirect_to @company
		else
			render action: :new
		end
	end

	private
	def user_params
		params.require(:company).permit(:cnpj, :nome, :password, :password_confirmation)
	end
end
