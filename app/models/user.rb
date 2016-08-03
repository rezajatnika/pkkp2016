class User < ActiveRecord::Base
  # Associations
  belongs_to :major

  # Validations
  validates :name, :birth, :nim, :phone, :email, :address, :major_id, presence: true
end
