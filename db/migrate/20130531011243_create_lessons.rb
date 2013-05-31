class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :name
      t.string :image_url
      t.string :video_url
      t.text :quiz
      t.text :material
      t.references :course

      t.timestamps
    end
    add_index :lessons, :course_id
  end
end
