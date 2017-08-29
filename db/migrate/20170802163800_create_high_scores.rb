class CreateHighScores < ActiveRecord::Migration[5.0]
  def change
    create_table :high_scores do |t|
      t.string :name
      t.integer :wpm
      t.float :accuracy

      t.timestamps
    end
  end
end
