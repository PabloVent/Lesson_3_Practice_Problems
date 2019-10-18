hsh = {"Fred"=>0, "Wilma"=>1, "Barney"=>2, "Betty"=>3, "BamBam"=>4, "Pebbles"=>5}
hsh = hsh.to_a

hsh.flatten!

hsh.select! do |idx|
  idx == "Barney" || idx == 2
end

p hsh

# p hsh.assoc("Barney")