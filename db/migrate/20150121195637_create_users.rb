class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nom
      t.string :email

      t.timestamps null: false
    end
  end
end
