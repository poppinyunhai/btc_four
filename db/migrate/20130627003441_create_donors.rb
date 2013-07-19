class CreateDonors < ActiveRecord::Migration
  def change
    create_table :donors do |t|
      t.string :name
      t.string :type_desc
      t.string :address
      t.string :num

      t.timestamps
    end
  end
end
