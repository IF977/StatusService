class Question < ActiveRecord::Base
  belongs_to :exame
  validates :nome, presence: true, length: {maximum: 200}
end
