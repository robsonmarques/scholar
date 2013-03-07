class ChangeSubjects < ActiveRecord::Migration
  def change
    remove_index :subjects, :klass_id
    remove_index :subjects, :teacher_id
    remove_column :subjects, :klass_id
    remove_column :subjects, :teacher_id
    add_column :subjects, :area, :string
    add_column :subjects, :content, :text
  end
end
