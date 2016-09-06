class AddPhotoToParticipants < ActiveRecord::Migration
  def change
    add_column :participants, :photo, :string
  end
end
