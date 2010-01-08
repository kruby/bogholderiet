class RenamePriorityInPost < ActiveRecord::Migration
  def self.up
    rename_column :posts, :priority, :position
  end

  def self.down
    rename_column :posts, :position, :priority
  end
end
