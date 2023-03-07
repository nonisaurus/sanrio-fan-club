class CharacterCard < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :name, length: {minimum: 3, too_short: "Name has to be at least %{count} characters long"}


  def is_protected?
        protected
  end


  # Registers a callback to be called after a record is created
  after_create :check_user_id

  private

  def check_user_id
    # if the user_id of the newly created cards matches the id of the current user
    unless self.user_id == Current.user.id
      self.destroy
      # if it doesnt match then displays an error
      errors.add(:user_id, "User ID does not match current user")
      # a way to stop the execution of a callback and immediately exit from the current method
      throw(:abort)
    end
  end
end
