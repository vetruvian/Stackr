class Other < ActiveRecord::Base
	validates_presence_of :quantity
	validates_presence_of :name
	validates_presence_of :description
	validates_presence_of :dateOfPurchase
	validates_presence_of :silverContent
	validates_presence_of :entryWeight
	validates_presence_of :purchasePrice
	validates_presence_of :spotAtPurchase
	validates_presence_of :comments
	validates_presence_of :user_id

	belongs_to :user

	after_save :calculate_total_others
	after_save :calculate_total_other_weight

	after_destroy :calculate_total_others
	after_destroy :calculate_total_other_weight

	after_update :calculate_total_others
	after_update :calculate_total_other_weight

	def calculate_total_others
		a = self.user.total_others
		self.user.update_attributes(totalOthers: a)
	end

	def calculate_total_other_weight
		a = self.user.total_other_weight
		self.user.update_attributes(totalOtherWeight: a)
	end
end
