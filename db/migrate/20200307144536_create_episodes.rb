class CreateEpisodes < ActiveRecord::Migration[6.0]
  def change
    create_table :episodes do |t|
      t.string :title, null: false
      t.string :plot, null: false
      t.integer :number, null: false
      t.references :video, null: false, foreign_key: true

      t.timestamps
    end
  end
end
