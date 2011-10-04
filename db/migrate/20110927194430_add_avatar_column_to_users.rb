class AddAvatarColumnToUsers < ActiveRecord::Migration
  def self.up
    add_column :dishes, :avatar_file_name, :string
    add_column :dishes, :avatar_content_type, :string
    add_column :dishes, :avatar_file_size, :integer
  end

  def self.down
    remove_column :dishes, :avatar_updated_at
    remove_column :dishes, :avatar_file_size
    remove_column :dishes, :avatar_content_type
  end
end
