class Argument < ActiveRecord::Base
	belongs_to :debate
	
	validates_presence_of :url, :title, :description
	validates_format_of :url, :with => /(^$)|(^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$)/ix
	validates_uniqueness_of :url
	validates_length_of :url, :title, :within => 2..255
	validates_length_of :description, :within => 0..1024
end
