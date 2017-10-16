print "Enter bob_distance: " ;
$bob_dist =  gets.to_i
print "Enter charles_distance: " ;
puts $charles_dist =  gets.to_i

def nbrOflaps
l=[$bob_dist,$charles_dist].reduce(1, :lcm)
puts l
puts "Output :#{l/$bob_dist} ,#{l/$charles_dist}"
end

nbrOflaps

