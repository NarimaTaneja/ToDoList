class CreateTaskItems < ActiveRecord::Migration
  def change
    create_table :task_items do |t|
      t.string :content
      t.references :task, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
