class Exame < ActiveRecord::Base
  belongs_to :company
  validates :nome, presence: true, length: {maximum: 50}
end
