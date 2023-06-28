class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :city
      t.string :state
      t.string :country
      t.string :pincode
      t.string :address

      t.timestamps
    end
  end
end
