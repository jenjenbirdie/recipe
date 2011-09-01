class CommentsController < ApplicationController  
before_filter :load_dish 

def create    
	@comment = @dish.comments.new(params[:comment])    
	if @comment.save      
		redirect_to @dish, :notice => 'Thanks for your comment'    
	else      
		redirect_to @dish, :alert => 'Unable to add comment'    
	end  
end    

def destroy    
	@comment = @dish.comments.find(params[:id])    
	@comment.destroy    
	redirect_to @dish, :notice => 'Comment deleted'  
end    

private    
	def load_dish     
		@dish = Dish.find(params[:dish_id])    
	end
end