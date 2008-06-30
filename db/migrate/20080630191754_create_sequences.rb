class CreateSequences < ActiveRecord::Migration
  def self.up
    create_table :sequences do |t|
      t.integer :user_id
      t.text :data
      t.integer :sequence_id
      t.string :label
      t.string :acid

      t.timestamps
    end
  end

  def self.down
    drop_table :sequences
  end
end
