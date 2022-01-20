class CreateAnimes < ActiveRecord::Migration[7.0]
  def change
    create_table :animes do |t|
      t.string :title
      t.string :creator
      t.string :genre
      t.string :demographic
      t.boolean :original

      t.timestamps
    end
  end
end
