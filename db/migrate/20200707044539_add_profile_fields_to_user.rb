class AddProfileFieldsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column "users", "profile_photo_url", :string
    add_column "users", "bio", "text"
  end
end
