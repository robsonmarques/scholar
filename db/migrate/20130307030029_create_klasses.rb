class CreateKlasses < ActiveRecord::Migration
  def change
    create_table :klasses do |t|
      t.string :name
      t.string :shift
      t.string :term
      t.string :year

      t.timestamps
    end
  end
end
