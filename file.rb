require 'pry'

quiet = File.open(ARGV[0], "r")

loud_quotes = quiet.read.upcase

loud = File.open(ARGV[1], "w")

loud.write(loud_quotes)

binding.pry
""
