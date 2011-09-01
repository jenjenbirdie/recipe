class Comment < ActiveRecord::Base
	belongs_to :dish
	
	validates :name, :email, :body, :presence => true
	

end
