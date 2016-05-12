class Company < ActiveRecord::Base
	has_many :exames
	has_secure_password
	validates :nome, presence: true, length: {maximum: 50}, uniqueness: true
	validates :password, presence: true, length: {minimum: 6} 
	validates :cnpj, presence: true, length: 14..14 ,numericality: true, uniqueness: true
	before_save {self.nome = nome.downcase}
end
