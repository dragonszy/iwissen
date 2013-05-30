class AddQuizToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :quiz, :text
  end
end
