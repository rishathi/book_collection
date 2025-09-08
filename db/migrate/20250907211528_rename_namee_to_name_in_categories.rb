class RenameNameeToNameInCategories < ActiveRecord::Migration[7.0]
  def change
    rename_column :categories, :namee, :name
  end
end
