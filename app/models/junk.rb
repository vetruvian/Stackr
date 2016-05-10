class Junk < ActiveRecord::Base
	validates_presence_of :quantity
	validates_presence_of :name
	validates_presence_of :dateOfPurchase
	validates_presence_of :silverContent
	validates_presence_of :entryWeight
	validates_presence_of :silverPercentage
	validates_presence_of :purchasePrice
	validates_presence_of :spotAtPurchase
	validates_presence_of :country
	validates_presence_of :condition
	validates_presence_of :comments
	validates_presence_of :user_id

	belongs_to :user

	after_save :calculate_total_junks
	after_save :calculate_total_junk_weight

	after_destroy :calculate_total_junks
	after_destroy :calculate_total_junk_weight

	after_update :calculate_total_junks
	after_update :calculate_total_junk_weight

	def calculate_total_junks
		a = self.user.total_junks
		self.user.update_attributes(totalJunks: a)
	end

	def calculate_total_junk_weight
		a = self.user.total_junk_weight
		self.user.update_attributes(totalJunkWeight: a)
	end
end
