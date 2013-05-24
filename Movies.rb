movies = {"Forest Gump"=>4,"Pirates 3"=> 3 ,"Kung fu panda"=>3,"Avataar"=>4}

puts "enter a choice"
choice = gets.chomp 
case choice
when "add"
        puts "enter title of the movie they'd like to add"
        title = gets.chomp.to_sym
        puts "rating of the movie they're adding"
        rating = gets.chomp.to_i
        if( movies[title] != nil)
            puts "movie already exists"
        else
            movies[title]=rating
            puts "the pair was added"
        end
when "update"
        puts "enter title of the movie they'd like to add"
        title = gets.chomp.to_sym
        if( movies[title] == nil)
            puts "movie does not exist"
        else
            puts "rating of the movie they're adding"
            rating = gets.chomp.to_i
            movies[title]=rating
            puts "the pair is updated"
        end
when "display"
        movies.each{ |movie,rating|
         puts "#{movie}: #{rating}"
        }
when "delete"
        puts "enter the title to delte"
        title = gets.chomp.to_sym
        if( movies[title] == nil)
            puts "movie does not exist"
        else
            movies.delete(title)
            puts "the pair is delted"
        end
else 
        puts "Error!"
end