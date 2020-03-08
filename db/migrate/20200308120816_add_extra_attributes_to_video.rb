class AddExtraAttributesToVideo < ActiveRecord::Migration[6.0]
  def change
    add_column :videos, :extra_attributes, :string
  end
end
