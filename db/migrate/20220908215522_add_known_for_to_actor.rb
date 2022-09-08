class AddKnownForToActor < ActiveRecord::Migration[7.0]
  def change
    add_column :actors, :known_for, :string
  end
end
