class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :name
      t.text :notes
      t.date :start_date
      t.date :end_date
      t.boolean :completed
      t.references :user

      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end