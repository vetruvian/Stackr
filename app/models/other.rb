class Other < ActiveRecord::Base
	validates_presence_of :quantity
	validates_presence_of :name
	validates_presence_of :description
	validates_presence_of :dateOfPurchase
	validates_presence_of :silverContent
	validates_presence_of :purchasePrice
	validates_presence_of :spotAtPurchase
	validates_presence_of :comments
	validates_presence_of :user_id

	belongs_to :user
end
