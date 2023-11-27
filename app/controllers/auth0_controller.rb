# frozen_string_literal: true

class Auth0Controller < ApplicationController

  def callback
    auth_info = request.env['omniauth.auth']
    session[:credentials] = {}
    session[:credentials][:id_token] = auth_info['credentials']['id_token']

    redirect_to profile_path
  end

  def failure
    @error_msg = request.params['message']
  end
end