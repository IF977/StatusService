class CreateExames < ActiveRecord::Migration
  def change
    create_table :exames do |t|
      t.string :nome
      t.references :company, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
