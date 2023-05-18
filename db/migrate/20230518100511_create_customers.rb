class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :job
      t.string :description      
      t.timestamps
    end
  end
end
