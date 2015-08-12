class AddOwnerToCats < ActiveRecord::Migration
  def change
    add_reference :cats, :owner, index: true, foreign_key: true
  end
end
