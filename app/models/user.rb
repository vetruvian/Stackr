class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


    validates_presence_of :name
    has_many :coins
    has_many :bars
    has_many :rounds
    has_many :junks
    has_many :others



    # Calculate Total Coins
    def total_coins
      self.coins.sum(:quantity)
    end

    # Calculate Total Coin Weight
    def total_coin_weight
      self.coins.sum(:entryWeight)
    end


    # Calculate Total Bars
    def total_bars
      self.bars.sum(:quantity)
    end

    # Calculate Total Bar Weight
    def total_bar_weight
      self.bars.sum(:entryweight)
    end


    # Calculate Total Rounds
    def total_rounds
      self.rounds.sum(:quantity)
    end

    # Calculate Total Round Weight
    def total_round_weight
      self.rounds.sum(:entryWeight)
    end


    # Calculate Total Junk
    def total_junks
      self.junks.sum(:quantity)
    end

    # Calculate Total Junk Weight
    def total_junk_weight
      self.junks.sum(:entryWeight)
    end


    # Calculate Total Other
    def total_others
      self.others.sum(:quantity)
    end

    # Calculate Total Other Weight
    def total_other_weight
      self.others.sum(:entryWeight)
    end


end
