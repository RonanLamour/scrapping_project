require 'rubygems'
require 'nokogiri'
require 'open-uri'

def adresse

	doc = Nokogiri::HTML(URI.open("http://annuaire-des-mairies.com/gard.html"))
	doc.css('a.lientxt').each do |node|
	@a=[(node['href'].slice!(1,1000))]  
			
			@h = node.text
			def adresse_full

				doc = Nokogiri::HTML(URI.open("http://annuaire-des-mairies.com#{@a[0]}"))
		
				doc.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').each do |node|
		
				@i = node.text

				puts "L'adresse de la mairie #{@h} est #{@i}."
				end
			end
adresse_full
		end
end
adresse