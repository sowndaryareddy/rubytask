def print_r val , num 
  (0...num).each do
  print val
  end
end

s1 = "A aaaa bb c"
s2 = "& aaa bbb c ddddd"

s1=s1.split("")
s2=s2.split("")

s1_hash={}
s2_hash={}

s1.each{ |i|
	count=0
	(0..s1.length).each{ |j|
		if(i==s1[j])
			count +=1
		end	
	}

	s1_hash.store(i, count) if ('a'..'z').cover?(i)
}

puts s1.join
puts s1_hash


s2.each{ |i|
	count=0
	(0..s2.length).each{ |j|
		if(i==s2[j])
			count +=1
		end	
	}
	
	s2_hash.store(i, count) if ('a'..'z').cover?(i)
	
}

puts s2.join
puts s2_hash

if s1_hash.keys.length >= s2_hash.keys.length
s1_hash.keys.each{ |i|
  if s2_hash.keys.include?(i)
  s2_hash.keys.each{ |j|
        if i==j
              if s1_hash[i] > s2_hash[j]
                     print "s1:/"
                     print_r i , s1_hash[i]
              elsif s1_hash[i] < s2_hash[j]
                     print "=:/"
                     print_r j , s2_hash[j]
              else
                     print "=:/"
                     print_r i , s1_hash[i]
              end
       end
  }
  else
                     print "s1:/"
                     print_r i , s1_hash[i]
  end
  puts ""
}
elsif s1_hash.keys.length < s2_hash.keys.length
s2_hash.keys.each{ |j|
  if s1_hash.keys.include?(j)
     s1_hash.keys.each{ |i|
        if i==j
              if s1_hash[i] > s2_hash[j]
                     print "s1:/"
                     print_r i , s1_hash[i]
              elsif s1_hash[i] < s2_hash[j]
                     print "s2:/"
                     print_r j , s2_hash[j]
              else
                     print "=:/"
                     print_r i , s1_hash[i]
              end
       end
     }
  else
                     print "s2:/"
                     print_r j , s2_hash[j]
  end
  puts ""
}
end

