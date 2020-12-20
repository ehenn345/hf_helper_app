class AddDecimalToWeight < ActiveRecord::Migration[6.0]
  def change
    change_column :weights, :current_weight, :decimal, precision: 5, scale: 1
  end
end
