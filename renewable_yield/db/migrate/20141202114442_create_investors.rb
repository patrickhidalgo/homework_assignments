class CreateInvestors < ActiveRecord::Migration
  def change
    create_table :investors do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :phone_number
      t.string :street_address
      t.string :city
      t.string :state
      t.integer :zip
      t.string :email
      t.integer :ssn
      t.string :password
      t.string :password_confirmation

      t.timestamps
    end
  end
end
