class CreateFactories < ActiveRecord::Migration
  def self.up
    create_table :factories do |t|
      t.string :photo_file_name
      t.string :photo_content_type
      t.integer :photo_file_size

      t.timestamps
    end
  end

  def self.down
    drop_table :factories
  end
end
