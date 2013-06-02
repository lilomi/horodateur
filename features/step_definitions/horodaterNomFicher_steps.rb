Given(/^un nom avec la date (.+)$/) do |date|
 @horodateur = Horodateur.new(date)
end

Given(/^la nouvelle date (\d+)\/(\d+)\/(\d+)$/) do |day, month, year|
	@horodateur.setNewDate(day,month,year)
end

When(/^je remplace l'ancienne date par la nouvelle$/) do
  @horodateur.replace() 
end

Then(/^le nom idu fichiercontient "(.*?)"$/) do |arg1|
  @incl= @horodateur.fileName.include? arg1
	puts @incl
	@incl.should == true
end



