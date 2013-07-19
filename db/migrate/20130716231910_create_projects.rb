class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :user_id, :null => false
      t.string :name, :null => false
      t.string :description
      t.string :tags
      t.boolean :completed,   :default => false, :null => false
      t.boolean :in_progress, :default => false, :null => false

      t.timestamps
    end
  end
end
