class CreatePres < ActiveRecord::Migration
  def change
    create_table :pres do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
