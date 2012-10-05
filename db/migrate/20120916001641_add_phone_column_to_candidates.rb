class AddPhoneColumnToCandidates < ActiveRecord::Migration
  def change
    add_column :candidates, :phone, :string
  end
end
