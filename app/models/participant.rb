class Participant < ActiveRecord::Base
  # Association
  belongs_to :major

  # Photo
  mount_uploader :photo, PhotoUploader

  # Validations
  validates :name,
    :nim,
    :birth,
    :address,
    :email,
    :gender,
    :departement_id,
    :phone,
    :birth_place,
    :photo,
    presence: true

  # Gender
  enum gender: { pria: 0, wanita: 1 }

  def self.to_csv
    attributes = %w{ name nim gender prodi birth phone email address }

    CSV.generate(headers: true) do |csv|
      csv << attributes
      all.each do |user|
        csv << attributes.map { |attr| user.send(attr) }
      end
    end
  end

  def prodi
    departement.name
  end
end
