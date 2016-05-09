require "spec_helper"
require "user"
describe User do
    usuario = User.new
    
    it "instância de usuario" do
        usuario.should be_instance_of(User)
    end
    
end