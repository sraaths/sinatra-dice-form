require "sinatra"
require "sinatra/reloader"

# Route to display the dice form
get("/") do
  erb(:dice_form)
end

# Route to process the roll
get("/process_roll") do
  @num_dice = params.fetch("dice").to_i
  @num_sides = params.fetch("sides").to_i
  @rolls = Array.new(@num_dice) { rand(1..@num_sides) }  # Generate dice rolls
  erb :results
end
