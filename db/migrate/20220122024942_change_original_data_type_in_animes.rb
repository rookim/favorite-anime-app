class ChangeOriginalDataTypeInAnimes < ActiveRecord::Migration[7.0]
  def change
    change_column :animes, :original, 'boolean USING CAST (original AS boolean)'
  end
end
