class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :project_id, :null => false
      t.string :name
      t.text :description
      t.boolean :completed
      t.boolean :in_progress

      t.timestamps
    end
  end
end
