class AddNoGroupToParticipants < ActiveRecord::Migration
  def change
    add_column :participants, :no_group, :string
  end
end
