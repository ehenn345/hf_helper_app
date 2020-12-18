class CreateFluids < ActiveRecord::Migration[6.0]
  def change
    create_table :fluids do |t|
      t.integer :user_id
      t.date :date
      t.integer :input_intake

      t.timestamps
    end
  end
end
