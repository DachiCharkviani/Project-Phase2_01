class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :year_published
      t.references :publisher_id, null: false, foreign_key: true
      t.string :Publisher

      t.timestamps
    end
  end
end
