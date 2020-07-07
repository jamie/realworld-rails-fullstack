module ApplicationHelper
  def profile_image(_user)
    # TODO: Allow user to override profile image url in settings
    image_path("smiley-cyrus.jpg")
  end
end
