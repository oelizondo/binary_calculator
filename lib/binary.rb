class Binary
  def initialize(number)
    @number = number
  end

  def convert
    @number = @number.to_i
    done = false
    result = ''
    while !done
      if (@number / 2) == 1
        result += (@number % 2).to_s
        result += (@number / 2).to_s
        done = true
      else
        result += (@number % 2).to_s
        @number = @number / 2
      end
    end
    result.reverse
  end

  def revert
    result = 0
    multiplier = 1
    @number.to_s.reverse.split('').each do |bit|
      result += (bit.to_i * multiplier)
      multiplier *= 2
    end
    result
  end

end

# puts 'Type a number: '
# number = gets.chomp
# number = Binary.new(number)

# puts 'Do you want to revert binary or convert to binary? (r/c)'
# answer = gets.chomp

# result = answer == 'c' ? number.convert : number.revert

# puts "Your answer is #{result}"

