class CreateOutfits < ActiveRecord::Migration
  def change
    create_table :outfits do |t|
      t.datetime :date

      t.timestamps
    end
  end
end
