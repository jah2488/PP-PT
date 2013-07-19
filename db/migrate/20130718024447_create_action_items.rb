class CreateActionItems < ActiveRecord::Migration
  def change
    create_table :action_items do |t|
      t.integer :task_id, :null => false
      t.string :name
      t.text :description
      t.boolean :completed
      t.boolean :in_progress

      t.timestamps
    end
  end
end
