class TypeColumnRename < ActiveRecord::Migration
  def up
    rename_column :question, :type, :qtype
  end

  def down
  end
end
