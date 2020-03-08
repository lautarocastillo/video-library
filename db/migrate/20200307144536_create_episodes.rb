class CreateEpisodes < ActiveRecord::Migration[6.0]
  def change
    create_table :episodes do |t|
      t.string :title
      t.string :plot
      t.integer :number
      t.references :video, null: false, foreign_key: true

      t.timestamps
    end
  end
end
