class LoginController < ApplicationController
    def login
        if logged_in? || logged_in_company?
  	    	redirect_to root_url
  	    end
    end
end
