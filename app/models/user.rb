class User < ActiveRecord::Base
  validates :name, :birth, :nim, :phone, :email, presence: true
end
