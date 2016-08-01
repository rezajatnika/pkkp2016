class Major < ActiveRecord::Base
  # Associations
  has_many :users

  # Validations
  validates :name, presence: true
end
