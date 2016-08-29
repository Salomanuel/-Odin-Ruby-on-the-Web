require 'open-uri'
urlazzo = 'http://www.rubyinside.com/test.txt'

f = open(urlazzo)
puts f.readlines.join

puts "1) " + "*" * 30

puts "The document is #{f.size} bytes in length"

f.each_line do |line|
	puts line
end

puts "2) " + "*" * 30

open(urlazzo) do |f|
	puts f.readlines.join
end

puts "3) " + "*" * 30

url = URI.parse(urlazzo)
url.open { |f| puts f.read}

puts "4) " + "*" * 30

f = open(urlazzo)

puts f.content_type
puts f.charset
puts f.last_modified

