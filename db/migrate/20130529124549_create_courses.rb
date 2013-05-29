class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.string :name
      t.string :teacher
      t.text :description
      t.references :user

      t.timestamps
    end
    add_index :courses, :user_id
  end
end
