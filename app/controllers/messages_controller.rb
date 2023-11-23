class MessagesController < ApplicationController
  def public
    @messages = Message.where(message_type: "public")
  end

  def protected
    @messages = Message.where(message_type: "protected")
  end

  def admin
    @messages = Message.joins(:user).where('users.role == "admin"')
  end
end
