class CreateArts < ActiveRecord::Migration[5.1]
  def change
    create_table :arts do |t|
      t.string :latitude
      t.string :longitude
      t.string :name

      t.timestamps
    end
  end
end
