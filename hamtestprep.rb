#
#
# this will be a complete rewrite of hamtestprep in ruby
#


class Test
	attr_accessor :questions

	def initialize
		@questions = []
		@pool = []
		@question_num = []
	end

	def get_questions
    # Get the questions into an array,
    # Separate array for each question section
    x = 0
    section_num = 0
    @questions = IO.readlines('questionpool.txt')
    

    @questions.each do |line|
    	if ( line =~ /T{1}\d[A-Z]\s/ ) 
    		# This is always ONE line so there's something
    		@section_num += 1
    		@pool[x] = line
    		# newarr("@section_#{@section_num}", Array.new)
    	elsif ( line =~ /~~/ 
    		# move to the next position in the array
    		x += 1
    	elsif ( line != /^$/ )
    		@question_num << line
    		@pool[x] = @question_num 
    	end

    end




    def ask_questions

    end
end

test = Test.new
test.get_questions


# @questions.delete_if do |line|
#   if ( line =~ /T{1}\d[A-Z]\s/ )
#     do_something_with(line)
#     true # Make sure the if statement returns true, so it gets marked for deletion

# IO.foreach( 'questionpool.txt' ) do |line|
    	# 	if ( line =~ /T{1}\d[A-Z]\s/ )
    	# 	  until 
    	# 	end
    	# 	if ( line =~ /^$/ )
    	# 	  puts 
    	# 	end