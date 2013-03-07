class ChangeNumericFields < ActiveRecord::Migration
  def change
    change_column :klasses, :year, :integer, :limit => false
    change_column :students, :age, :integer, :limit => false
  end
end
