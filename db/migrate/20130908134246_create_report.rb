class CreateReport < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.references :place, index: true
      t.references :temperature, index: true
      t.references :brand, index: true
      t.references :recipient, index: true
    end
  end
end
