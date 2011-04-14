class CreateMailingList < ActiveRecord::Migration
  def self.up
    create_table :mailing_lists do |t|
      t.integer :silverpop_id
      t.references :contact
      t.integer :sendable_id
      t.string :sendable_type
      t.timestamps
    end
  end

  def self.down
    drop_table :mailing_lists
  end
end
