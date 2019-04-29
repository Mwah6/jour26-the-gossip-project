class UserController < ApplicationController
  def user_display
    @user = User.find(params[:id])

  end
end
