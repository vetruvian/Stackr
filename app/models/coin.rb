class Coin < ActiveRecord::Base
	validates_presence_of :quantity
	validates_presence_of :name
	validates_presence_of :dateOfPurchase
	validates_presence_of :silverContent
	validates_presence_of :entryWeight
	validates_presence_of :mintYear
	validates_presence_of :purchasePrice
	validates_presence_of :spotAtPurchase
	validates_presence_of :country
	validates_presence_of :condition
	validates_presence_of :comments
	validates_presence_of :user_id

	belongs_to :user

	after_save :calculate_total_coins
	after_save :calculate_total_coin_weight

	after_destroy :calculate_total_coins
	after_destroy :calculate_total_coin_weight

	after_update :calculate_total_coins
	after_update :calculate_total_coin_weight

	def calculate_total_coins
		a = self.user.total_coins
		self.user.update_attributes(totalCoins: a)
	end

	def calculate_total_coin_weight
		a = self.user.total_coin_weight
		self.user.update_attributes(totalCoinWeight: a)
	end



end
