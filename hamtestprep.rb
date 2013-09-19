#
#
# this will be a complete rewrite of hamtestprep in ruby
#


class Test
	attr_accessor :questions

	def initialize
		@questions = []
		@questions = IO.readlines('questionpool.txt')
	end

	def get_questions
    # Get the questions into an array,
    # Separate array for each question section
    x = 0
    section = 0

    @questions.each do |line|
    	if ( line =~ /T{1}\d[A-Z]\s/ ) 
    		@section_num += 1
    		newarr("@section_#{@section_num}", Array.new)


    	end
    	x += 1
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