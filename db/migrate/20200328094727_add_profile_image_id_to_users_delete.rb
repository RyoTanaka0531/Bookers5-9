class AddProfileImageIdToUsersDelete < ActiveRecord::Migration[5.2]
  def change
    drop_table :add_profile_image_id_to_users
  end
end
