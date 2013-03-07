class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :field
      t.references :klass
      t.references :teacher

      t.timestamps
    end
    add_index :subjects, :klass_id
    add_index :subjects, :teacher_id
  end
end
