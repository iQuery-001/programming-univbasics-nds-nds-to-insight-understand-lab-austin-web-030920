 require 'yaml'
 require 'pry'

def directors_database
	rot13 = -> (s) { s.tr('A-Za-z', 'N-ZA-Mn-za-m') }
  @_db ||= YAML.load(rot13.call(File.open("directors_db").read.to_s))
end

binding.pry

count = 0
while count < directors[0][:movies].length do
    puts directors_database[0][:movies]
    count += 1
end