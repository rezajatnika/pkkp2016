class AddBirthPlaceToParticipants < ActiveRecord::Migration
  def change
    add_column :participants, :birth_place, :string
  end
end
