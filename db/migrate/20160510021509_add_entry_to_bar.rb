class AddEntryToBar < ActiveRecord::Migration
  def change
    add_column :bars, :entryweight, :decimal
  end
end
