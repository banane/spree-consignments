class Consignor < ActiveRecord::Base
  belongs_to :spree_user
  belongs_to :spree_state
  has_many :spree_consignments, :dependent => :destroy
end
