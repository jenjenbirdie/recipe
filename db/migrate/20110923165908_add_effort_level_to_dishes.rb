class AddEffortLevelToDishes < ActiveRecord::Migration
  def self.up
    add_column :dishes, :effort_level, :string
  end

  def self.down
    remove_column :dishes, :effort_level
  end
end
