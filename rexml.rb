require 'rexml/document'

xml = <<END_XML
<people>
	<person>
		<name>Peter Griffin</name>
		<gender>Male</gender>
	</person>
	<person>
		<name>Fred Dust</name>
		<gender>Male</gender>
	</person>
</people>
END_XML

tree = REXML::Document.new(xml)

tree.elements.each("people/person") do |person|
	puts person.get_elements("name").first
end