class Post < ApplicationRecord
  belongs_to :user

  validate  :validate_title_presence
  validates :title, length: { minimum: 8 } if :title_is_present?

  private

  def validate_title_presence
    errors.add(:title, "can't be blank") unless title_is_present?
    errors.add(:content, "can't be blank") unless content_is_present?
  end

  def title_is_present?
    title.present?
  end

  def content_is_present?
    content.present?
  end
end
