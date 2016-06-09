class QuestionsController < ApplicationController
    def index
		@current_exame ||= Exame.find(params[:exame_id]) 
        @questions = Question.all
    end
    
    def new
        @question = Question.new
    end
    
    def create
        @exame = Exame.find(params[:exame_id])
        #@question = Question.new(question_params)
        @question = @exame.questions.create(question_params)
        if @question.save
            redirect_to company_exame_questions_path
        else
            render action: :new
        end
    end
    
    def show
        @question = Question.find(params[:id])
    end
    
    def edit
    end
    
    def destroy
        @question = Question.find(params[:id])
  		@question.destroy
  		redirect_to company_exame_questions_path
    end
    
    def update
    end
    
    
    helper_method :media_question

    def media_question(question)
        @question = Question.joins(:reviews).where('reviews.question_id' => question.id)
        media = @question.average(:nota)
        format("%.3f",media)
        
    end
    
    private
    def question_params
        params.require(:question).permit(:nome)
    end
end
