class User < ActiveRecord::Base
  # Associations
  belongs_to :major

  # Validations
  validates :name, :birth, :nim, :phone, :email, presence: true
end
