class ReviewsController < ApplicationController
    def create
	    @question = Question.find(params[:question_id])
	    @review = @question.reviews.create(review_params)


      	@review.save
      	redirect_to user_perguntas_path(current_user.id, @question.exame_id)
  end

  private
    def review_params
      params.require(:review).permit(:nota, :comentario)
    end
end
