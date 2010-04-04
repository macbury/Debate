class CreateDebates < ActiveRecord::Migration
  def self.up
    create_table :debates do |t|
      t.string :title
      t.text :description
      t.string :email
      t.string :question
      t.string :challenger_option
      t.string :defender_option
      t.string :permalink

      t.timestamps
    end
  end

  def self.down
    drop_table :debates
  end
end
