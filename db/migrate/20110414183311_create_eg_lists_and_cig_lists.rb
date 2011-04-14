class CreateEgListsAndCigLists < ActiveRecord::Migration
  def self.up
    create_table :eg_lists do |t|
      t.string :industry_1
      t.string :industry_2
      t.string :submitted_form
      t.boolean :full_time
      t.string :msa
      t.string :city
      t.string :state
      t.string :zip
    end
    create_table :cig_lists do |t|
      t.string :industry
      t.string :desired_pay
      t.string :license_type
    end
  end

  def self.down
    drop_table :eg_lists
    drop_table :cig_lists
  end
end
