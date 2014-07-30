class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.references :outfit, index: true
      t.references :friend, index: true

      t.timestamps
    end
  end
end
