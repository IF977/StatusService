class Exame < ActiveRecord::Base
  belongs_to :company
  has_many :questions
  validates :nome, presence: true, length: {maximum: 50}
end
