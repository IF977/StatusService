class ReviewsController < ApplicationController
    def create
	    @question = Question.find(params[:question_id])
	    @review = @question.reviews.create(review_params)


      	@review.save
      	redirect_to user_reviews_path(current_user.id, @question.id)
  end

  private
    def review_params
      params.require(:review).permit(:nota, :comentario)
    end
end
