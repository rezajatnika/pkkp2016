class User < ActiveRecord::Base
  # Associations
  belongs_to :major

  # Validations
  validates :name, :birth, :nim, :phone, :email, :address, :major_id, presence: true

  # def self.to_csv
  #   attributes = %w{ name nim prodi lahir alamat email telepon }

  #   CSV.generate(headers: true) do |csv|
  #     csv << attributes
  #     all.each do |user|
  #       csv << attributes.map { |attr| user.send(attr) }
  #     end
  #   end
  # end

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |user|
        csv << user.attributes.values_at(*column_names)
      end
    end
  end
end
