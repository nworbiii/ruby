# Takes any number of arguments and returns the largest of them.

# def test_max_refactor
#   puts max_refactor(1,2,3)
#   puts max_refactor(1.0,2.0, 3.0)
#   puts max_refactor(nil,nil,nil)
#   puts max_refactor({},{},{})
#   puts max_refactor([],[],[])
#   puts max_refactor(false,false,false)
#   puts max_refactor("","","")
# end

# def max_refactor(*rest)
# 	rest.max
# end

# p max_refactor(1,2,3,54,33)

# p [1,2,3,4].max

def max_refactor(*x) # O(nlogn)
	x.sort.last
end

p max_refactor(2,3,9,100,99)