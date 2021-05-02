module TagsHelper
	def to_nepali_num(num)
		nepali_num=""
		num=num.to_s.reverse.to_i
		while num > 0
			digit= num % 10
			num=num/10
			nepali_num+= to_nepali_num_case(digit).to_s
		end
		return nepali_num
	end

	def to_nepali_num_case(digit)
		case digit
		when 0
			"०"
		when 1
			"१"
		when 2
			"२"
		when 3
			"३"
		when 4
			"४"
		when 5
			"५"
		when 6
			"६"
		when 7
			"७"
		when 8
			"८"
		when 9
			"९"
		else
			"*"
		end
	end
end
