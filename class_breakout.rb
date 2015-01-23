####
## undefined variables in global scope
####

# p self, self.class

#p localvar # error: undefined local variable or method
#p @instancevar # nil (does not raise an error)
#p @@classvar # warning for using a class variable in a global scope
              # error: uninitialized class variable



####
## vars in method, accessed from global scope
####

# def a_method
# 	localvar = "local"
# 	@instancevar = "instance"
# 	@@classvar = "class"
# end

#p localvar # error: undefined local variable or method
#p @instancevar # nil (not an error)
#p @@classvar # warning for using a class variable in a global scope
              # error: uninitialized class variable

#a_method # call the method
#p localvar # error: undefined local variable or method
#p @instancevar # "instance" (in scope)
#p @@classvar # "class" (in scope)



####
## vars in class scope, accessed from global scope and class
####

# class AClass
# 	localvar = "local"
# 	@instancevar = "instance"
# 	@@classvar = "class"
# end

#p localvar # error: undefined local variable or method
#p @instancevar # nil (no error)
#p @@classvar # warning for using a class variable in a global scope
             # error: uninitialized class variable
#p AClass.localvar # error: undefined method
#p ACLass.@instancevar # syntax error
#p AClass.@@classvar # syntax error


####
## vars in class scope, accessed from class method
####

# class BClass
# 	localvar = "local"
# 	@instancevar = "instance"
# 	@@classvar = "class"

# 	def self.a_class_method
# 		#p localvar # undefined local variable or method
# 		p @instancevar # "instance"
# 		p @@classvar # "class"
# 	end
# end

# BClass.a_class_method


####
## vars in class scope accessed from instance method
####

# class CClass
# 	localvar = "local"
# 	@instancevar = "instance"
# 	@@classvar = "class"

# 	def an_instance_method
# 		#p localvar # error: undefined local variable or method
# 		#p @instancevar # nil (Not the same @instancevar as above!!!)
# 		#p @@classvar # "class" (same var as above)
# 	end
# end

# CClass.new.an_instance_method


####
## vars in instance scope accessed from instance method
####

# class DClass
# 	def initialize
# 		localvar = "local"
# 		@instancevar = "instance"
# 		@@classvar = "class"
# 	end

# 	def an_instance_method
# 		#p localvar # error: undefined local variable or method
# 		p @instancevar # "instance"
# 		p @@classvar # "class"
# 	end
# end

# DClass.new.an_instance_method


