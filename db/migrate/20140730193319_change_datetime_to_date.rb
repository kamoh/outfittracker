class ChangeDatetimeToDate < ActiveRecord::Migration
  def change
    change_column :outfits, :date, :date 
  end
end
