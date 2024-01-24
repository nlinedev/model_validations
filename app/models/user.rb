class User < ApplicationRecord
  has_secure_password

  has_many :posts, dependent: :destroy

  validate :validate_presence
  validates :password, confirmation: true

  private

  def validate_presence
    errors.add(:username, "can't be blank") unless field_is_present?(username)
    errors.add(:email, "can't be blank") unless field_is_present?(email)
    errors.add(:password_confirmation, "can't be blank") unless field_is_present?(password_confirmation)
  end

  def field_is_present?(field)
    field.present?
  end
end
