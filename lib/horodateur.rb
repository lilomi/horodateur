class Horodateur
	attr_accessor :fileName

  def extractOldDate()
    @strOldDate = @fileName.match(/\d{8}/)[0]
		@oldDate = Date::strptime(@strOldDate, "%Y%m%d")
	end

	def updateFileName(newDate)
		@newDate = Date::strptime(newDate, "%d/%m/%Y")
		@oldDate = extractOldDate
    replace()
	end

	def replace()
		@oldPattern = @oldDate.strftime("%Y%m%d")
		@newPattern = @newDate.strftime("%Y%m%d")
		@newfileName = @fileName.sub(@oldPattern,@newPattern)
		File.rename(@fileName,@newfileName)
	end

end
