

require 'rubygems'
require 'open-uri'
require 'nokogiri' 

File.open("RubyBook", "\w").write(STDOUT)
result = Nokogiri.HTML(open("http://bash.im/quotes.json"), 'utf-8')
final_result = result.xpath "//div[@class='quote']"
print "quote: ["
0.upto(final_result.length-2) do |x| 
print "{", "rating: \"", final_result[x].css("span[class='rating']").inner_text, "\", "
print "id: \"", final_result[x].css("a[class='id']").inner_text, "\", "
print "date: \"", final_result[x].css("span[class='date']").inner_text, "\", "
print "text: \"", final_result[x].css("div[class='text']").inner_text, "\"}, "
end
print "{", "rating: \"", final_result.last.css("span[class='rating']").inner_text, "\", "
print "id: \"", final_result.last.css("a[class='id']").inner_text, "\", "
print "date: \"", final_result.last.css("span[class='date']").inner_text, "\", "
print "text: \"", final_result.last.css("div[class='text']").inner_text, "\"}"
print "]"




