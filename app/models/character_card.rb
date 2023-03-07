class CharacterCard < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :name, length: {minimum: 3, too_short: "Name has to be at least %{count} characters long"}


  before_destroy :check_if_protected

  private

  def check_if_protected
    if self.protected?
      errors.add(:protected, "This card is protected and cannot be deleted.")
      throw(:abort)
    end
  end
end
