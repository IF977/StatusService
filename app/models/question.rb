class Question < ActiveRecord::Base
  belongs_to :exame
  has_many :reviews
  validates :nome, presence: true, length: {maximum: 200}
end
