class TypeColumnRename < ActiveRecord::Migration
  def up
    rename_column :questions, :type, :qtype
  end

  def down
  end
end
