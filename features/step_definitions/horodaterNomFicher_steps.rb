Given(/^un fichier nomme "(.*?)"$/) do |fileName|
	@oldFileName= fileName
	@file = File.open(fileName,"w+")
	@horodateur = Horodateur.new
	@horodateur.fileName= fileName
end

When(/^je horodate le fichier avec la date du "(.*?)"$/) do |newDate|
  @horodateur.updateFileName(newDate)
end

Then(/^le fichier se nomme maintenant "(.*?)"$/) do |newFileName|
	File.exists?(@oldFileName).should ==false 
	File.exists?(newFileName).should == true
	File.delete(newFileName)
end

