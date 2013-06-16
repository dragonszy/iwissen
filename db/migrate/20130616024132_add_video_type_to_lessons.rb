class AddVideoTypeToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :video_type, :string
  end
end
