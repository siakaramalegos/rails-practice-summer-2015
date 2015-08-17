class RemoveBreedFromCats < ActiveRecord::Migration
  def change
    remove_column :cats, :breed, :string
  end
end
