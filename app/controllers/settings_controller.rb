class SettingsController < ApplicationController
  before_action :require_logged_in

  def edit
    @user = current_user
  end

  def update
    current_user.update(permitted_profile_attributes)
  end

  private

  def permitted_profile_attributes
    params.require(:user).permit([
      :profile_photo_url,
      :username,
      :bio,
      :email
      # TODO: password,
    ])
  end
end
