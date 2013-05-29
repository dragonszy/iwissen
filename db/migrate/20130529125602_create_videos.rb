class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :name
      t.text :material
      t.references :unit

      t.timestamps
    end
    add_index :videos, :unit_id
  end
end
