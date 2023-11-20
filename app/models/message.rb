class Message < ApplicationRecord
  belongs_to :user 

  validates :message_type, inclusion: { in: %w(protected public) }

  def verbose
    "This is a #{message_type} message. Owned by user #{user_id}"
  end
end
