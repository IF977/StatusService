class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :cnpj
      t.string :nome
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
