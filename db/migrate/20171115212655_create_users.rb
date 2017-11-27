class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.integer :happiness
      t.integer :tickets
      t.integer :nausea
      t.integer :height

      t.timestamps null: false
    end
  end
end
