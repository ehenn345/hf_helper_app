class CreateSodia < ActiveRecord::Migration[6.0]
  def change
    create_table :sodia do |t|
      t.integer :user_id
      t.integer :input_sodium
      t.date :date

      t.timestamps
    end
  end
end
