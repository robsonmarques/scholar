class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :age
      t.string :gender
      t.string :email
      t.references :klass

      t.timestamps
    end
    add_index :students, :klass_id
  end
end
