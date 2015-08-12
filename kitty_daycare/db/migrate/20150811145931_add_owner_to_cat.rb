class AddOwnerToCat < ActiveRecord::Migration
  def change
    add_column :cats, :owner, :string
  end
end
