class RemoveOwnerFromCats < ActiveRecord::Migration
  def change
    remove_column :cats, :owner, :string
  end
end
