require "spec_helper"
require "company"
describe Company do
    empresa = Company.new
    
    it "instância de company" do
        empresa.should be_instance_of(Company)
    end
    
end