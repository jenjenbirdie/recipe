class Dish < ActiveRecord::Base
	validates :title, :presence => true, :length => { :maximum => 150}
	validates :ingredients, :presence => true
	validates :direction, :presence => true
	validates_numericality_of :duration, :presence => true, :greater_than => 0
	
	belongs_to :user
	has_many :comments

	CATEGORY1_TYPES = ["Chicken", "Beef", "Pork", "Vegetable", "Seafood", "Veal", "Bakery Goods", "Others"]
	CATEGORY2_TYPES = ["Breakfast", "Main Course", "Side Dish", "Soup", "Salad", "Burger & Sandwich", "Pasta", "Snack", "Dessert", "Others"]
	CATEGORY3_TYPES = ["American", "Vietnamese", "Chinese", "German", "Japanese", "Indian", "Mexican", "European", "Filipino", "Others", "unknown"]

	def owned_by?(owner)
		return false unless owner.is_a? User
		user == owner
	end
end
