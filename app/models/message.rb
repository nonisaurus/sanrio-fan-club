class Message < ApplicationRecord
  belongs_to :user

  validates :message, presence: true
  validates :message, length: {minimum: 2, too_short: "Message has to be at least %{count} characters long"}

end
