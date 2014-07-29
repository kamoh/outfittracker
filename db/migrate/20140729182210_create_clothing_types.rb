class CreateClothingTypes < ActiveRecord::Migration
  def change
    create_table :clothing_types do |t|
      t.string :type

      t.timestamps
    end
  end
end
