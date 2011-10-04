class Dish < ActiveRecord::Base
	validates :title, :presence => true, :length => { :maximum => 150}
	validates :ingredients, :presence => true
	validates :direction, :presence => true
	validates_numericality_of :duration, :presence => true, :greater_than => 0
	validates_attachment_content_type :avatar, :content_type => 'image/jpeg'
	validates_attachment_presence :avatar



	belongs_to :user
	has_many :comments
	
	# added to upload image
	# has_attached_file :avatar, :styles => {:url => "25x25#", :thumb => "100x100#",   :small => "150x150>",   :large => "400x400>" } 
	# has_attached_file :avatar , :styles => { :thumb=> "100x100#", :small  => "150x150>" }
	# has_attached_file :avatar , :styles => { :normal => "100x100#", :small => ["70x70>", :jpg] }
	has_attached_file :avatar , :styles => { :thumb=> "100x100#", :small  => "150x150>", :medium => "300x300>", :large =>   "400x400>" }

	CATEGORY1_TYPES = ["Chicken", "Beef", "Pork", "Vegetable", "Seafood", "Veal", "Bakery Goods", "Others"]
	CATEGORY2_TYPES = ["Breakfast", "Main Course", "Side Dish", "Soup", "Salad", "Burger & Sandwich", "Pasta", "Snack", "Dessert", "Others"]
	CATEGORY3_TYPES = ["American", "Vietnamese", "Chinese", "German", "Japanese", "Indian", "Mexican", "European", "Filipino", "Others", "unknown"]

	def owned_by?(owner)
		return false unless owner.is_a? User
		user == owner
	end
end
