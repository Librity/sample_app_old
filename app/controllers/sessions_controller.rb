# frozen_string_literal: true

# The Rest controller for the Sessions resource
class SessionsController < ApplicationController
  def new
    @title = 'Login'
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user&.authenticate(params[:session][:password])
      log_in(user)
      redirect_to user
    else
      flash.now[:danger] = 'Invalid email/password combination.'
      render 'new'
    end
  end

  def destroy; end
end