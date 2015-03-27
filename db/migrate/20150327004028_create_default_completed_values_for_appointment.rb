class CreateDefaultCompletedValuesForAppointment < ActiveRecord::Migration
  def up
  	change_column :appointments, :completed, :boolean, :default => false
  end

  def down
  	change_column :appointments, :completed, :boolean, :default => nil
  end
end
