class CreateLogs < ActiveRecord::Migration[6.0]
  def up
    create_table :logs do |t|


      t.string :IP
      t.datetime :dtime
      t.string :status
      t.float :rt
      t.date :date
      t.integer :hour
      t.integer :minute
      t.integer :second
      t.string :method
      t.string :text



      t.timestamps
    end
  end

def down
drop_table :logs
end

end
