class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.string :type
      t.string :media
      t.text :description
      t.string :question
      t.text :options
      t.string :answer

      t.timestamps
    end
  end
end
