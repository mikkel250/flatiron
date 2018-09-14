
#Step 1 - gather each season into an array by iterating over it using collect at each step
	
	tempHash = []

	tempHash = holiday_hash.collect do |season, holiday|

		tempHash << season   # Note - this pushes everything below it into the array as well

#Step 1a - either capitalize the seasons and the holidays before they go into the final hash, or after they've gone in and then push them back in. something like
# Note: this assumes the old array structure and will need to be rewritten to account for new steps

   def capitalizer(holidays)
     h_split = holidays.map {|x| x.split(" ")} # split into separate arrays.
        # iterate over each array within that array, capitalize them
      h_split.each do |i|
        i.each do |x|
          x.capitalize!
        end
    end
  end
# Step 2 - 


# Noodling below

# perhaps make it a conditional loop based on the length of the hash?
holiday_hash.each do |season, holiday|
	temp = [] 		# reset the array at the beginning of each round of iteration
  temp << season.to_s.capitalize     #push in the season, properly formatted
  
    holiday.each do |holiday, supplies|
      
      h_split = holiday.to_s.split("_").join(" ") 		# splits the holidays into separate words
      #then run the capitalizer and push it back into the temp arr
      	#Capitalizer
      	 h_split = holiday.map {|x| x.split(" ")} # split into separate arrays.
        # iterate over each array within that array, capitalize them
		      h_split.each do |i|
		        i.each do |x|
		          x.capitalize!
		        end
			    end # capitalizer
      #then push in the supplies. this may need to be a separate loop so that capitalize can run on just the holidays
      supplies_arr << supplies
      
    end #2nd lvl (holidays)
    #then iterate over the entire arr and print?
  end #1st lvl (seasons)