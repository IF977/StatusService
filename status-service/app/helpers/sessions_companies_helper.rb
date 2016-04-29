module SessionsCompaniesHelper
	def sign_in_company(sign_in_company)
		session[:company_id] = @company.id # :user_login @user.login
	end
	def current_company 
		@current_company ||= Company.find_by(id: session[:company_id]) 
	end 
	def block_access_company 
		if current_company.present? 
			redirect_to companies_path 
		end 
	end
	def logged_in_company?
		!current_company.nil?
	end
	def sign_out_company
		session.delete(:company_id)
		@current_company = nil
	end

end
