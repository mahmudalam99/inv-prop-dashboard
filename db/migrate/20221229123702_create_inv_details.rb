class CreateInvDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :inv_details do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :tfn
      t.date :dob
      t.decimal :balance

      t.timestamps
    end
  end
end
