class AddOwnerToCat < ActiveRecord::Migration
  def change
    add_column :cats, :owner_name, :string
  end
end
