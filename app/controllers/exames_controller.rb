class ExamesController < ApplicationController
    def index
        @exames = Exame.all
    end
    
    def new
        @exame = Exame.new
    end
    
    def create
        @company = Company.find(params[:company_id])
        #@exame = Exame.new(exame_params)
        @exame = @company.exames.create(exame_params)
        if @exame.save
            redirect_to company_exames_path
        else
            render action: :new
        end
    end
    
    def show
        @exame = Exame.find(params[:id])
    end
    
    def edit
    end
    
    def destroy
        @exame = Exame.find(params[:id])
  		@exame.destroy
  		redirect_to company_exames_path
    end
    
    def update
    end
    
    private
    def exame_params
        params.require(:exame).permit(:nome)
    end
end
