class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :nim,   index: true, unique: true
      t.string :email, index: true, unique: true
      t.string :phone
      t.date   :birth


      t.timestamps null: false
    end
  end
end
