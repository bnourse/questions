#!/usr/bin/env ruby

class QuestionList
	

	def initialize(fileName)
		@inputFile = File.new(fileName)
		@args = ARGV
		@questionArray = @inputFile.readlines
	end

	def addQuestion(question)
		@questionArray.push(question)
	end

	def removeQuestion(questionNumber)
		@removeQuestionIndex = questionNumber - 1
		questionArray.delete_at[@removeQuestionIndex]
	end

	def display
		@questionCount = @questionArray.length
		if @questionCount > 0
			for i in 0..@questionCount
				@questionNumber = i + 1
				puts @questionNumber.to_s + "." + @questionArray[i].to_s
			end
		else
			puts "!!!No questions?!!!"
		end
	end

	def execute
	end

end

class Question
	def initialize
		@questionText = ""
	end
	def initialize(questionText)
		@questionText = questionText
	end
end


questions = QuestionList.new("/Users/bnourse/questions.txt")
questions.display