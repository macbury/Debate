class CreateArguments < ActiveRecord::Migration
  def self.up
    create_table :arguments do |t|
      t.string :url
      t.string :title
      t.text :description
      t.integer :debate_id
      t.integer :val

      t.timestamps
    end
  end

  def self.down
    drop_table :arguments
  end
end
