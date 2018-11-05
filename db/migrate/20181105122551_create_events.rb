class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :date
      t.string :avatar
      t.string :localization

      t.timestamps
    end
  end
end
