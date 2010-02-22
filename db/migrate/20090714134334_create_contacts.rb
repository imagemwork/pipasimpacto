class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string :nome
      t.string :email
      t.string :assunto
      t.text :mensagem

      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end
