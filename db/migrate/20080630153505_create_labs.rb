class CreateLabs < ActiveRecord::Migration
  def self.up
    create_table :labs do |t|
      t.string :title
      t.string :location
      t.text :description
      t.string :homepage
      t.string :pi
      t.string :funding

      t.timestamps
    end
  end

  def self.down
    drop_table :labs
  end
end
