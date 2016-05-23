require "spec_helper"
require "exame"
describe Exame do
    avaliacao = Exame.new
    
    it "instância de Exame" do
        avaliacao.should be_instance_of(Exame)
    end
    
end