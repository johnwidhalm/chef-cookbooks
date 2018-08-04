hostname = node['hostname']

file '/etc/motd' do
	content "Hostname is: #{hostname}"
end

# String interpolation

# Combining text with a variable - using variable interpolation.
# When using variable interpolation - you cannot use single quotes
# Single quotes interpret things between them litterally
 



