class CreateChiens < ActiveRecord::Migration
  def change
    create_table :chiens do |t|
      t.string :nom
      t.string :race

      t.timestamps null: false
    end
  end
end
