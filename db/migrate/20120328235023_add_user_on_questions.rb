class AddUserOnQuestions < ActiveRecord::Migration
  def up
    add_column :questions, :user_id, :integer
  end

  def down
  end
end
