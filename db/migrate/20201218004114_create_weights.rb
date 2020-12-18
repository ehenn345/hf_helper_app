class CreateWeights < ActiveRecord::Migration[6.0]
  def change
    create_table :weights do |t|
      t.integer :user_id
      t.integer :current_weight
      t.date :date

      t.timestamps
    end
  end
end
