class Bar < ActiveRecord::Base
	validates_presence_of :quantity
	validates_presence_of :name
	validates_presence_of :dateOfPurchase
	validates_presence_of :silverContent
	validates_presence_of :entryweight
	validates_presence_of :mintYear
	validates_presence_of :purchasePrice
	validates_presence_of :spotAtPurchase
	validates_presence_of :serialNumber
	validates_presence_of :country
	validates_presence_of :condition
	validates_presence_of :comments
	validates_presence_of :user_id

	belongs_to :user

	after_save :calculate_total_bars
	after_save :calculate_total_bar_weight

	after_destroy :calculate_total_bars
	after_destroy :calculate_total_bar_weight

	after_update :calculate_total_bars
	after_update :calculate_total_bar_weight

	def calculate_total_bars
		a = self.user.total_bars
		self.user.update_attributes(totalBars: a)
	end

	def calculate_total_bar_weight
		a = self.user.total_bar_weight
		self.user.update_attributes(totalBarWeight: a)
	end
end
