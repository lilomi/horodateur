class Horodateur
	def initialize(strDate)
		@oldDate= Date.parse(strDate)
		puts @oldDate
		@fileName= "nomFichier_"+ @oldDate.strftime("%Y%m%d")+"_0001.txt"
		puts @fileName
	end

	attr_accessor :fileName

	def setNewDate(day,month,year)
		puts year
		@newDate= Date.new(year.to_i,month.to_i,day.to_i)
		puts @newDate
	end

	def replace()
		@oldPattern = @oldDate.strftime("%Y%m%d")
		@newPattern = @newDate.strftime("%Y%m%d")
		@fileName = @fileName.sub(@oldPattern,@newPattern)
		puts @fileName
	end

end
