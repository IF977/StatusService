class Review < ActiveRecord::Base
  belongs_to :question
  validates :nota, :inclusion => { :in => 1..5, :message => "Avalie a pergunta com uma nota entre 1 e 5" }
end
