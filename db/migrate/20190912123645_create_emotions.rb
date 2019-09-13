class CreateEmotions < ActiveRecord::Migration[5.2]
  def change
    create_table :emotions do |t|
      t.integer :emotion_seq
      t.string :emotion_name
      t.text :emotion_comment

      t.timestamps
    end
  end
end
