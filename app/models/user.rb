class User < ActiveRecord::Base
  # Associations
  belongs_to :major

  # Validations
  validates :name, :birth, :nim, :phone, :email, :address, :major_id, presence: true

  def self.to_csv
    attributes = %w( name nim prodi lahir alamat email telepon )

    CSV.generate(headers: true) do |csv|
      csv << attributes
      all.each do |user|
        csv << attributes.map. { |attr| user.send(attr) }
      end
    end
  end

  def name
    name
  end

  def nim
    nim
  end

  def prodi
    major.name
  end

  def lahir
    birth
  end

  def alamat
    address
  end

  def email
    email
  end

  def telepon
    phone
  end
end
