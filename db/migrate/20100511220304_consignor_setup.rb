class ConsignorSetup < ActiveRecord::Migration
  def self.up
    create_table :spree_consignors do |t|
	    t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.string :address1
      t.string :address2
      t.string :city
      t.integer :state_id
      t.string :zip_code
      t.string :phone
      t.string :fax
      t.string :email
      t.text :notes
      t.timestamps
    end

    add_index(:spree_consignors, :id)
    add_index(:spree_consignors, :user_id)
    add_index(:spree_consignors, :last_name)
    add_index(:spree_consignors, :email)
    add_index(:spree_consignors, :state_id)
  end

  def self.down
    drop_table :spree_consignors
  end
end