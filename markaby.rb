require 'rubygems'
require 'markaby'

m = Markaby::Builder.new

m.html do
	head { title 'this is the title' }

	body do 
		h1 'Hello world'
		h2 'Sub-heading'
		p  %q{This is a pile of stuff showing off Markaby's features}
		h2 'Another sub-heading'
		p  'Markaby is good at:'
		ul do
			li 'Generating HTML from Ruby'
			li 'Keeping HTML structured'
			li 'Lots more...'
		end
	end
end

puts m

puts "1) " + "*" * 30

items = ["Bread", "Butter", "Tea", "Coffee"]

m.html do 
	body do
		h1 'My shopping list'
		ol do
			items.each do |item|
				li item
			end
		end
	end
end

puts m