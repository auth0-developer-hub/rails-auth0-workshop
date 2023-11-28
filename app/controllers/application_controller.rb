# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def require_login
    return if current_user

    redirect_post('/auth/auth0', params: { prompt: 'login' },
                                 options: { method: :post, authenticity_token: 'auto' })
  end

  def current_user
    decoded_id_token if session[:credentials]
  end

  def decoded_id_token
    JWT.decode(session[:credentials][:id_token], nil, false)[0].deep_symbolize_keys
  end

  def user_params
    current_user.slice(:nickname, :name, :picture, :updated_at, :email, :email_verified, :sub)
  end

  def user_id 
    User.find_by(nickname: current_user[:nickname]).id
  end
end