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
    
    helper_method :media_exame,:status_exame

    def media_exame(exame)
        resposta = []
        aux = 0
        questions = exame.questions
        if questions.empty?
            '-'
        else
            questions.each do |question|
                question = Question.joins(:reviews).where('reviews.question_id' => question.id)
                media = question.average(:nota)
                if media != nil
                    format("%.3f",media)
                    resposta << media 
                    aux += 1
                end
            end
            if aux != 0
                media = resposta.inject(0){|sum,x| sum + x}/aux 
                format("%.3f",media)
            else
                '-'
            end
        end
    end
    
    def status_exame
        status = {}
        exames = current_company.exames
        if exames.empty?
            '-'
        else
            exames.each do |exame|
                media = media_exame(exame)
                status[exame.nome] = media
            end
            status
        end
    end
    
    private
    def exame_params
        params.require(:exame).permit(:nome)
    end
end
