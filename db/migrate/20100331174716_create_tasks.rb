class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.string :name
      t.text :notes
      t.datetime :start_time
      t.datetime :end_time
      t.boolean :completed
      t.boolean :next_action
      t.references :project
      t.references :location
      t.references :user

      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end