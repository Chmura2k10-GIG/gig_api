class CreateUserBands < ActiveRecord::Migration[5.2]
  def change
    create_table :user_bands do |t|
      t.references :user, foreign_key: true
      t.references :band, foreign_key: true

      t.timestamps
    end
  end
end
