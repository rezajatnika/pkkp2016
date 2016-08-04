class User < ActiveRecord::Base
  # Associations
  belongs_to :major

  # Validations
  validates :name, :birth, :nim, :phone, :email, :address, :major_id, presence: true

  def self.to_csv
    attributes = %w( Nama NIM Prodi TL Alamat Email Telepon )

    CSV.generate(headers: true) do |csv|
      csv << attributes
      all.each do |user|
        csv << attributes.map.with_index(2) { |attr| user.send(attr) }
      end
    end
  end

  def Nama
    name
  end

  def NIM
    nim
  end

  def Prodi
    major.name
  end

  def TL
    birth
  end

  def Alamat
    address
  end

  def Email
    email
  end

  def Telepon
    phone
  end
end
