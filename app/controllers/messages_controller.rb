class MessagesController < ApplicationController
  before_action :require_login, except: [:public]
  
  def public
    @messages = Message.where(message_type: "public")
  end

  def protected
    @messages = Message.where(message_type: "protected", user_id: user_id)
  end

  def admin
    @messages = Message.joins(:user).where("users.role == 'admin' AND users.id == #{user_id}")
  end
end
