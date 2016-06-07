require "spec_helper"
require "question"
describe Question do
    question = Question.new
    
    it "instância de question" do
        question.should be_instance_of(Question)
    end
    
end