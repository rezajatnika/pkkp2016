class Departement < ActiveRecord::Base
  # Associations
  has_many :participants

  # Validations
  validates :name, presence: true
end
