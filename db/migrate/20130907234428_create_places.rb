class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.decimal :lat
      t.decimal :lng
    end
  end
end
