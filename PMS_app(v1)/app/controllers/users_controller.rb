class UsersController < ApplicationController
  def users
    @users = Users.all
  end
end
