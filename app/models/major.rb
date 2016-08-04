class Major < ActiveRecord::Base
  # Associations
  has_many :users

  # Validations
  validates :name, presence: true

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |major|
        csv << major.attributes.values_at(*column_names)
      end
    end
  end
end
