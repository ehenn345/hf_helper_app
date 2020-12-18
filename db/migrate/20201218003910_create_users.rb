class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password
      t.integer :sodium_limit
      t.integer :fluid_limit

      t.timestamps
    end
  end
end
