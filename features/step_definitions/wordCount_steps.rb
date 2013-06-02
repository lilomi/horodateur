Given(/^a certain amount of text$/) do
	@text= "this is some texte"
end

When(/^I count the word$/) do
	@wc = WordCount.new(@text)
end

Then(/^the result is the number of word in the text$/) do
	@wc.result.should == 4
end
