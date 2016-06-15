 class UsersController < ApplicationController
	before_action :authorize, except: [:new, :create]
	before_action :correct_user?, only: [:edit, :update, :destroy]
	def new
		@user = User.new
	end

	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to @user
		else
			render action: :new
		end
	end

	def edit
  		@user = User.find(params[:id])
  	end

    def update
  		@user = User.find(params[:id])
  		if @user.update_attributes(user_params)
  			redirect_to users_path
  		else
  			render action: :edit
  		end
  	end

    def destroy
  		@user = User.find(params[:id])
  		@user.destroy
  		sign_out
  		redirect_to root_path
  	end
  	
  	def show_companies
  		@companies = Company.all
  	end
  	
  	def show_exames
  		@company = Company.find(params[:id])
  		@exames = @company.exames
  	end
  	
  	def show_questions
  		@exame = Exame.find(params[:exame_id])
  		@questions = @exame.questions
  	end
  	
  	def review_question
  		@question = Question.find(params[:question_id])
  		@reviews = @question.reviews
  	end
  	
  	 helper_method :media_question

    def media_question(question)
        @question = Question.joins(:reviews).where('reviews.question_id' => question.id)
        media = @question.average(:nota)
        if media == nil
            '-'
        else
            format("%.3f",media)
        end
    end

	private
	def user_params
		params.require(:user).permit(:nome, :email, :login, :password, :password_confirmation)
	end
end
