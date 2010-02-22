class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :codigo
      t.string :title
      t.integer :liters
      t.string :stuff
      t.string :size
      t.string :url_small
      t.string :url_large
			t.string :photo_file_name
			t.string :photo_content_type
			t.integer :photo_file_size
      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
