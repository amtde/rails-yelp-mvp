class RenameColumns < ActiveRecord::Migration[5.0]
  def change
    rename_column :reviews, :stars, :rating
  end
end
