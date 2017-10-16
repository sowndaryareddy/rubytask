def check temp ,i , num
  if ROMAN_NUMS.include?(temp)
    print ROMAN_NUMS[temp]
  elsif ROMAN_NUMS.include?(i) 
      if num<4
            (0...num).each do 
              print ROMAN_NUMS[i]
            end
      else
            print ROMAN_NUMS[5*i]
            check (num-5)*i,i,num-5
      end
  end
end

ROMAN_NUMS = {
1000 => "M",
900 => "CM", 500 => "D", 400 => "CD", 100 => "C",
90 =>"XC",  50 => "L",  40 => "XL",  10 => "X",
9 => "IX",  5 => "V",  4 => "IV", 1 =>"I"
}

print "Enter a number :\t"
num=gets.to_i
temp = num
hash_num={}
count=1

while temp!=0 do
 n=temp%10
 temp=temp/10
 hash_num.store(count,n)
 count *= 10
end

print "Its roman value is :\t"

(hash_num.keys.sort.reverse).each{ |i|
temp=i*hash_num[i]
#puts "temp =#{temp} i = #{i} hash = #{hash_num[i]}"
check temp , i ,hash_num[i]
}

puts ""

