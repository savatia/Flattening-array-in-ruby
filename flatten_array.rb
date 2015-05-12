class Flatten
	@temp_array = Array.new(10)

	def initialize(myarray)
		flatten_array(myarray)
	end

	def flatten_array(myarray)
		for i in myarray
			if i.kind_of?(Array)
				then flatten_array(i)
			else
				if @temp_array == nil
					then @temp_array = [i]
				else
					@temp_array << i
				end

			end
		end
	end

	def print_array
		print(@temp_array)
	end
end

multiarr = [
			['one','two','three','four'],		
			[1,2,3,4],
				["I",
					["wandered","lonely","as",
						["a","cloud"]
					]
				]
		   ]

f = Flatten.new(multiarr)
f.print_array