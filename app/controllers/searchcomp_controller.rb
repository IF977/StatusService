class SearchcompController < ApplicationController
    def searchcomp
        if params[:search]
            #@search = ActiveRecord::Company.connection.execute("SELECT * FROM Company WHERE (Company.nome IN '#{params[:search].downcase}')")
            @search = Company.where(:nome => params[:search].downcase)
        else
            @search = Company.where(nome: params[:search])
        end
    end
end
