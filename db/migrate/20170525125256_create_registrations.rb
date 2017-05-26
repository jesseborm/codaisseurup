class CreateRegistrations < ActiveRecord::Migration[5.1]
  def change
    create_table :registrations do |t|
      t.references :user, foreign_key: true
      t.references :event, foreign_key: true
      t.string :status
      t.decimal :price
      t.integer :guest_count#, limit param
      t.decimal :total_price

      t.timestamps
    end
  end
  # Is this the right place to calculate value of total_price
  def total_price
    { :total_price => registration[:price] * registration[:guest_count] }
  end
end
