class AddDepartementReferencesToParticipants < ActiveRecord::Migration
  def change
    add_reference :participants, :departement, index: true, foreign_key: true
  end
end
