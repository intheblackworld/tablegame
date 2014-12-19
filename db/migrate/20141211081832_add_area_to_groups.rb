class AddAreaToGroups < ActiveRecord::Migration
  def change
    add_column :groups, :area, :string
  end
end
