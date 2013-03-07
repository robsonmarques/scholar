class RemoveFieldFromSubject < ActiveRecord::Migration
  def change
    remove_column :subjects, :field
  end
end
