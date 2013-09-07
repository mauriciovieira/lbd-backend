class CreateBars < ActiveRecord::Migration
  def change
    create_table :bars do |t|
      t.string :name
    end
  end
end
