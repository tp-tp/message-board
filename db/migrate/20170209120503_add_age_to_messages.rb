class AddAgeToMessages < ActiveRecord::Migration
  validates :age, numericality:{ only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 150 } # 数値か小数点のみ有効
  def change
    add_column :messages, :age, :integer
  end
end
