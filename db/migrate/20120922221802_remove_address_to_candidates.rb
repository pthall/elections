class RemoveAddressToCandidates < ActiveRecord::Migration
  def up
    remove_column :candidates, :address
  end

  def down
    add_column :candidates, :address, :string
  end
end
