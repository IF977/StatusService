class SearchcompController < ApplicationController
    def searchcomp
        if params[:search]
            @search = Company.where(nome: params[:search].downcase)
        else
            @search = Company.where(nome: params[:search])
        end
    end
end
