require 'rails_helper'
require 'review'

describe Review do
    review = Review.new
    it "instância de Review" do
        review.should be_instance_of(Review)
    end
    
end