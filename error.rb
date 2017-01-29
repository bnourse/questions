class Test
	testString = "test"

	def doSomething
		puts self.testString + " 1 2 3"
	end
end

x = Test.new
x.doSomething