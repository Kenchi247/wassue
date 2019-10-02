class CreateAnswerScores < ActiveRecord::Migration[5.2]
  def change
    create_table :answer_scores do |t|
      t.integer :user_id
      t.integer :answer_id
      t.integer :answer_score

      t.timestamps
    end
  end
end