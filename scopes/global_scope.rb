require 'pry'

ingredients = ['flour', 'water', 'yeast', 'salt']
method = "meaure"

def unit
  ["teaspoon", "cup", "pinch"].sample
end


#blocks can access higher scopes, but variables defined in them are still local. Local vars are always local.
ingredients.each do |ingredient|
  method = "mix"        #CAREFUL - we actually have access in blocks to global vars, so we can REASSIGN them !! 
  inside_var = "can you see me globally?"
  puts "#{method} one #{unit} of #{ingredient}"
end
      #ingredients - global, can get pulled into the loop
      #ingredient - 

# if ingredients.count == 4
#   cupcake = "delicious"
#   puts unit
# end

# while x < 2
#   cupcake = "delicious"
#   puts unit
# end

binding.pry
""