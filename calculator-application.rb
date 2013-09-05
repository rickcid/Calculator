puts ''
puts 'CALCULATOR APPLICATION'
puts ''
puts 'This is a simple calculator. Please select a type of calculation.'
puts 'Enter "1" for Addition'
puts 'Enter "2" for Subtraction'
puts 'Enter "3" for Multiplication'
puts 'Enter "4" for Division'

while true
	number_entered = gets.chomp

	#Verifies for a valid number and (1-4) selection entry
	if (number_entered + '1').to_f == (number_entered.to_f * 10) + 1
		if (number_entered.to_i < 1 || number_entered.to_i > 4)
			puts 'Please enter a valid number from (1-4).'
		else
			break
		end
	else
		puts 'Please enter a valid number from (1-4).'
	end
end

puts 'Enter the first number:'
while true
	first_number = gets.chomp

	#Verifies for valid 1st number entry
	if (first_number + '1').to_f == (first_number.to_f * 10) + 1
		break
	else
		puts 'Please enter a valid number!'
	end
end

puts 'Enter the second number:'
while true
second_number = gets.chomp

	#Verifies for valid 2nd number entry
	if  (second_number + '1').to_f == (second_number.to_f * 10) + 1
		break
	else
		puts 'Please enter a valid number!'
	end
end

#ADDITION
if number_entered == '1'
	puts "#{first_number.to_f} + #{second_number.to_f} = " + (first_number.to_f + second_number.to_f).to_s
end

#SUBTRACTION
if number_entered == '2'
	puts "#{first_number.to_f} - #{second_number.to_f} = " + (first_number.to_f - second_number.to_f).to_s
end

#MULTIPLICATION
if number_entered == '3'
	puts "#{first_number.to_f} x #{second_number.to_f} = " + (first_number.to_f * second_number.to_f).to_s
end

#DIVISION
if number_entered == '4'
		puts "#{first_number.to_f} / #{second_number.to_f} = " + (first_number.to_f / second_number.to_f).to_s
end

