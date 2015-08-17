class AddBreedToCats < ActiveRecord::Migration
  def change
    add_reference :cats, :breed, index: true, foreign_key: true
  end
end
