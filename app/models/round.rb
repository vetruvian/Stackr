class Round < ActiveRecord::Base
	validates_presence_of :quantity
	validates_presence_of :name
	validates_presence_of :dateOfPurchase
	validates_presence_of :silverContent
	validates_presence_of :entryWeight
	validates_presence_of :mintYear
	validates_presence_of :purchasePrice
	validates_presence_of :spotAtPurchase
	validates_presence_of :serialNumber
	validates_presence_of :country
	validates_presence_of :condition
	validates_presence_of :comments
	validates_presence_of :user_id

	belongs_to :user

	after_save :calculate_total_rounds
	after_save :calculate_total_round_weight

	def calculate_total_rounds
		a = self.user.total_rounds
		self.user.update_attributes(totalRounds: a)
	end

	def calculate_total_round_weight
		a = self.user.total_round_weight
		self.user.update_attributes(totalRoundWeight: a)
	end
end
