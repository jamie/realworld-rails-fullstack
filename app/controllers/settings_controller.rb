class SettingsController < ApplicationController
  def edit
    @user = current_user
  end

  def update
    current_user.update_attributes(permitted_profile_attributes)
  end

  private

  def permitted_profile_attributes
    params.require(:user).permit([
      :profile_photo_url,
      :username,
      :bio,
      :email,
      # TODO: password,
    ])
  end
end
