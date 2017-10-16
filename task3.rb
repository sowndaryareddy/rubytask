print " Enter any expr to evaluate:\t"
str=gets
temp=[]

str.each_byte{|i|
 if i==10
	break
 end
 if(i>=48 && i<=57)
	temp.push((i.chr).to_i)	
 else
	right=temp.pop
	left=temp.pop
	case  i
		when 42   
			$result=left*right
		when 43   
			$result=left+right
		when 45  
			$result=left-right
		when 47 
			begin  
			$result=left/right
			rescue
				p "Division by 0 cannot be processed"			;return
			end 
		else puts " Request cannot be processed"	
	end
	temp.push($result)
 end
}

puts "The result after processing the above expression is #{$result}"

