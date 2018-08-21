class CreateEducations < ActiveRecord::Migration[5.2]
  def change
    create_table :educations do |t|
      t.date :start_date
      t.date :end_date
      t.string :degree
      t.string :University_name
      t.text :Details

      t.timestamps
    end
  end
end
