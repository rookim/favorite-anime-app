class AddJapaneseTitleAndPremieredToAnimes < ActiveRecord::Migration[7.0]
  def change
    add_column :animes, :japanese_title, :string
    add_column :animes, :premiered, :date
  end
end
