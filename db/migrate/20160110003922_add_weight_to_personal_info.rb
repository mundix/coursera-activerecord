class AddWeightToPersonalInfo < ActiveRecord::Migration
  def change
    add_column :personal_infos, :weight, :float
  end
end
