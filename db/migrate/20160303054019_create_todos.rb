class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :item
      t.boolean :completed
      t.string :date
      t.string :string
      t.has_many :categories

      t.timestamps null: false
    end
  end
end
