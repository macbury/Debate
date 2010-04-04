class Debate < ActiveRecord::Base
	xss_terminate
	has_permalink :title
	
	validates_presence_of :title, :description, :question, :email, :challenger_option, :defender_option
	validates_length_of :title, :question, :within => 3..255
	validates_length_of :description, :within => 16..1024
	validates_length_of :challenger_option, :defender_option, :within => 3..48
	validates_format_of :email, :with => %r{^(?:[_a-z0-9-]+)(\.[_a-z0-9-]+)*@([a-z0-9-]+)(\.[a-zA-Z0-9\-\.]+)*(\.[a-z]{2,4})$}i
	
	attr_protected :permalink
	
	has_many :arguments, :dependent => :delete_all
	
	def to_param
		permalink
	end
	
end
