class Solver
	def initialize(puzzle)
		@@p = puzzle.split(//)
	end

	def solver
		h = Hash.new
		81.times do |j|
			next if @@p[j].to_i!=0 # here I was accessing the @@p using $p which is not the right syntax same error occured at other places too
			# get the elements of row 
      rowElements = getRowElements(j)                   
			
			rowElements.each  do |v|      
           @@p[j]=v.to_s
           completed = solver #recursion call to solve 
           if(completed == true) #base condition
             return true
           end
      end
     
      @@p[j]=0  
      return false   
		end

		return true
	end

	def getRowElements(j)
  
      Array array = [1,2,3,4,5,6,7,8,9]
      
      row = j/9 *9
      col = j%9
      
      #find the number in the row
      9.times do |k|
        m = @@p[row+k].to_i
        if(m)
          array.delete(m)
        end
      end

      #find the number in the column
      9.times do |k|
        m = @@p[k*9 + col].to_i
        if(m)
          array.delete(m)
        end
      end

      #find the number in the same sub cube
      start_row = j/27 * 3
      start_col = j%9/3 * 3
      3.times do |t|
        3.times do |l|
          m =  @@p[(start_row + t)*9 + start_col + l].to_i
          if(m)
            array.delete(m)
          end
        end
      end

      return array
    
  end

	def printResult
    puts "\n\nThe Solution is:\n"
    print "+-----------------------------+\n|"
    1.upto(81) do |x|
      print " #{@@p[x-1]} "
      if x%3==0 and x%9 !=0
        print "|"
      end
      if x%9==0 and x%81 !=0
        print"|\n|-----------------------------|\n|"
      end
      if x%81==0
        puts "|"
      end        
    end
    puts "+-----------------------------+"
      
  end


end
# there was an error here where we werent checking the ARGV 
# plus you need to execute the method like this:
# ruby sudoku.rb 000700390090500000300240800700900200000000000003007008004026007000005060026001000
# the string you pass after ruby sudoku.rb is will come inside the ARGV array
# if you do ruby sudoku.rb inside the terminal you will get no arguments hence ARGV.lenght will be zero
# if you do ruby sudoku.rb a b
# you get the  a and b in the ARGV array  
if ARGV.length == 0 || ARGV[0].length != 81
	puts "Your input was invalid. Please try again."
	puts "USAGE: ruby sudoku.rb <Sudoku puzzle on one line/no spaces with 0's being the blanks>"
	puts "Example: ruby sudoku.rb 0002016000.....09605000"
	exit
end

answer = Solver.new(ARGV[0])
puts "\n\n\nSolving puzzle, wait one moment..."
answer.solver
answer.printResult