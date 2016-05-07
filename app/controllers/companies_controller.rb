class CompaniesController < ApplicationController
	before_action :authorize_company, except: [:new, :create]
	before_action :correct_company?, only: [:edit, :update, :destroy]
	def index
		@companies = Company.all
	end
	def show
		@company = Company.find(params[:id])
	end
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
	def edit
  		@company = Company.find(params[:id])
  	end

    def update
  		@company = Company.find(params[:id])
  		if @company.update_attributes(company_params)
  			redirect_to companies_path
  		else
  			render action: :edit
  		end
  	end

    def destroy
  		@company = Company.find(params[:id])
  		@company.destroy
  		sign_out_company
  		redirect_to root_path
  	end

	private
	def user_params
		params.require(:company).permit(:cnpj, :nome, :password, :password_confirmation)
	end
end
