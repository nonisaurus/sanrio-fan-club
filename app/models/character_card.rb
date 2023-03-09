class CharacterCard < ApplicationRecord
  belongs_to :user

  mount_uploader :avatar, AvatarUploader

  validates :name, presence: true
  validates :name, length: {minimum: 3, too_short: "Name has to be at least %{count} characters long"}

  # callback to check if the card is protected or not
  before_destroy :check_if_protected

  # cannot be called outside of the model
  private

  def check_if_protected
    # checks whether the protected attribute of the current instance is true or not
    if self.protected?
      # iftrue, it adds an error message
      errors.add(:protected, "This card is protected and cannot be deleted.")
      # stops deleting the current instance and return the error message to the caller
      throw(:abort)
    end
  end
end
