class ChangeCampusToCampuses < ActiveRecord::Migration
  def change
    rename_table(:campus, :campuses)
  end
end
