class RemoveMajorIdFromParticipants < ActiveRecord::Migration
  def change
    remove_column :participants, :major_id, index: true
  end
end
