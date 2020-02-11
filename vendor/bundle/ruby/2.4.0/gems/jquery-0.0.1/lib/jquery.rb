require "jquery/version"
require 'nokogiri'
require 'open-uri'

module Jquery
  # Your code goes here...
  def self.url(site)
  	return Nokogiri::HTML(open(url).read)
  end

  
end

class	Nokogiri::HTML::Document
	def self.find(element)
		self.css(element)
	end
end
