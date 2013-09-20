#
#
# this will be a complete rewrite of hamtestprep in ruby
#


class Test
  attr_accessor :questions, :clean_pool, :question_array

  def initialize
    @questions = []
    @questions = IO.readlines('questionpool.txt')

  end

  def get_questions
    # Get the questions into an array,
    # Separate array for each question section
    @question_array = []
    @clean_pool = []
    @question_num = 0
    @section_num = 0


    @questions.each do |line|
      
      if ( line =~ /T{1}\d[A-Z]\s/ )
        # This is always ONE line so there's something
        @clean_pool[@section_num] = line
        @section_num += 1
        # puts line
        # newarr("@section_#{@section_num}", Array.new)
      
      elsif ( line =~ /T{1}\d[A-Z]\d\d/ )
        @question_id = line
      
      elsif ( line =~ /~~/ )
        # move to the next position in the array
        # puts @question_array

        # @clean_pool[@section_num][@question_num] << @question_array
        # @clean_pool["#{@section_num}".to_i] = @question_array
        # puts @question_array
        @section_num += 1
        @question_array.join('/n')
        @question_array.unshift( @question_id )
        @clean_pool[@section_num] = @question_array
        @question_num += 1
        # @question_array = []

      elsif ( line !~ /^$/ )
        @question_array << line
        
      end
    end

    def ask_questions
      puts "I'll ask the questions around here!"
      puts @clean_pool[0]
      puts "zero"
      # puts @clean_pool[0][1]
      puts "zero, one"
      puts @clean_pool[1]

      puts "zero,three"
      puts @clean_pool[2][0]
      puts @clean_pool[2][1]
      puts @clean_pool[3][2]
      # puts @clean_pool[2][3]
      # puts @clean_pool[2][5]
      puts "**************************************************************"
      puts "**************************************************************"
      puts "**************************************************************"
      puts "**************************************************************"
      puts "**************************************************************"
      puts "**************************************************************"
      puts "**************************************************************"
      puts "**************************************************************"
      puts "**************************************************************"
      puts "**************************************************************"
      puts "**************************************************************"
      puts "**************************************************************"
      puts @clean_pool[2]  
      # puts @clean_pool[1]
    end
  end
end
  hamtest = Test.new
  hamtest.get_questions
  hamtest.ask_questions

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
