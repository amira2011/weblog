class CreateWlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :wlogs do |t|
      t.string :IP
      t.timestamps :Time
      t.string :URL
      t.string :Status
      t.integer :istatus
      t.float :RT
      t.string :Methods
      t.string :URL1
     





      t.timestamps
    end
  end
end
