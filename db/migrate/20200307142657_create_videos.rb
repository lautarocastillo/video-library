class CreateVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :videos do |t|
      t.string :title, null: false
      t.string :plot, null: false
      t.string :type, null: false

      t.timestamps
    end
  end
end
