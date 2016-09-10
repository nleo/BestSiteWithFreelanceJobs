class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :body
      t.string :estimate_duration
      t.string :budget

      t.timestamps
    end
  end
end
