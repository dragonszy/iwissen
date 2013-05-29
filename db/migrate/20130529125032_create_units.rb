class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :name
      t.references :course

      t.timestamps
    end
    add_index :units, :course_id
  end
end
