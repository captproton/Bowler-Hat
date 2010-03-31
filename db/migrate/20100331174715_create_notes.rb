class CreateNotes < ActiveRecord::Migration
  def self.up
    create_table :notes do |t|
      t.text :content
      t.references :user

      t.timestamps
    end
  end

  def self.down
    drop_table :notes
  end
end