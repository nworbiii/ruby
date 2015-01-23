# Removes the duplicates from arrays without using the Array uniq method.
def repeated(array)
  counts = Hash.new(0)
  array.each{ |val|counts[val]+=1 }
  counts.reject{ |val,count|count==1 }.keys
  self
end

p repeated([])