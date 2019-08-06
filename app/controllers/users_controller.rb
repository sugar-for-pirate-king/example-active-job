# frozen_string_literal: true

class UsersController < ApplicationController
  def index; end

  def create
    CreateUsersJob.perform_later
    flash[:message] = 'Job has been started!'
    redirect_to users_path
  end
end
