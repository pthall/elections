class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :party
      t.string :election_date
      t.string :area
      t.string :party
      t.string :office
      t.string :homepage
      t.string :mailing_address
      t.string :email

      t.timestamps
    end
  end
end
