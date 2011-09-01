class Dish < ActiveRecord::Base
	validates :title, :presence => true
	validates :ingredients, :presence => true
	validates :direction, :presence => true
	validates :duration, :presence => true
	
	belongs_to :user
	has_many :comments

	CATEGORY1_TYPES = ["Chicken", "Beef", "Vegetable", "Seafood", "Veal", "Bakery Goods", "Others"]
	CATEGORY2_TYPES = ["Breakfast", "Main Meal", "Snack", "Dessert", "Others"]
	CATEGORY3_TYPES = ["American", "Vietnamese", "Chinese", "Japanese", "Indian", "Mexican", "European", "Filipino", "Others", "unknown"]
end
