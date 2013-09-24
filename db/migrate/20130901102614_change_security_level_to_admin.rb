class ChangeSecurityLevelToAdmin < ActiveRecord::Migration
  def change
  	rename_column :members, :security_level, :admin
  end
end
