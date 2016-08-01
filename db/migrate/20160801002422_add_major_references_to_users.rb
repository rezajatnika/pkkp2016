class AddMajorReferencesToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :major, foreign_key: true
  end
end
