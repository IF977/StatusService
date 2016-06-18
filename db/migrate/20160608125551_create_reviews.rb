class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :nota
      t.text :comentario
      t.references :question, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
