def pass_encrypt(str , n)
  arr =('A'..'Z').to_a
  a_to_z =('A'..'Z').to_a
  
  cypher_text=""
  cypher_text_temp = str.tr('A-Z',(a_to_z[n..25] << a_to_z[0...n]).flatten.join).tr('0-9',('0'..'9').to_a.reverse.join)
  
  cypher_text_temp.each_char.with_index{|c,i|
      if i.even?
        cypher_text << c.upcase
      else
        cypher_text << c.downcase
      end
  }
  cypher_text.reverse
end

puts pass_encrypt("IMAGINE DRAGON 123 !!!",2)

