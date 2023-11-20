class User < ApplicationRecord
  attr_accessor :nickname, :name, :picture, :updated_at, :email, :email_verified, :sub
end
