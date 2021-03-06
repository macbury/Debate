class ArgumentsController < ApplicationController
	skip_before_filter :verify_authenticity_token
	before_filter :check_if_trackback, :except => [:show]
	
	def chellenger
		create_argument(ARGUMENT_CHELLENGER)
	end
	
	def defender
		create_argument(ARGUMENT_DEFENDER)
	end
	
	def show
		@debate = Debate.find_by_permalink!(params[:debate_id])
		@argument = @debate.arguments.find(params[:id])
	end
	
	protected
		
		def create_argument(val)
			@argument = @debate.arguments.new
			@argument.url = params[:url]
			@argument.description = params[:excerpt]
			@argument.title = params[:title]
			@argument.val = val
			@argument.save

			render :action => "trackback.xml", :layout => false
		end
		
		def check_if_trackback
			@debate = Debate.find_by_permalink!(params[:debate_id])
			
			redirect_to @debate unless request.post?
		end
end
