class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :name
      t.string :nim,   index: true, unique: true
      t.string :email, index: true, unique: true
      t.string :phone
      t.string :address
      t.date :birth
      t.integer :gender
      t.belongs_to :major, index: true

      t.timestamps null: false
    end
  end
end
