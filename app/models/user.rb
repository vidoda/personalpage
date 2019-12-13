class User < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
  validates :cellphone, presence: true
  validates :gender, presence: true
  validates :naturality, presence: true
  validates :residence, presence: true
  validates :country, presence: true

  def user_incomplete?
    self.name.blank? || self.email.blank? || self.cellphone.blank? || self.naturality.blank? || self.residence.blank? || self.gender.blank?
  end
end
