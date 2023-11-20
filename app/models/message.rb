class Message < ApplicationRecord
  ADMIN = 'admin'
  PROTECTED = 'protected'
  PUBLIC = 'public'
  
  def initialize(type)
    @text = "This is #{message_type_string(type)} message."
  end

  private

  def message_type_string(type)
    type == ADMIN ? "an #{type}" : "a #{type}"
  end
end
