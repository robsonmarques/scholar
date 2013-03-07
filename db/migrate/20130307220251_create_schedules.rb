class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.references :klass
      t.references :subject
      t.references :teacher

      t.timestamps
    end
    add_index :schedules, [:klass_id, :subject_id, :teacher_id], :unique => true, :name => "index_schedules_on_ids"
  end
end
