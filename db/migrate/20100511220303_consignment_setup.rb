class ConsignmentSetup < ActiveRecord::Migration
  def self.up
    create_table :spree_consignments do |t|
	    t.integer :consignor_id
	    t.integer :commission, :default => 0, :null => false
      t.boolean :paid, :default => 0
      t.text :notes
      t.timestamps
    end
    add_column :spree_products, :consignment_id, :integer

    add_index(:spree_consignments, :id)
    add_index(:spree_consignments, :consignor_id)
    add_index(:spree_products, :consignment_id)
  end

  def self.down
    drop_table :spree_consignments
    drop_index(:spree_products, :consignment_id)
    remove_column :spree_products, :consignment_id
  end
end