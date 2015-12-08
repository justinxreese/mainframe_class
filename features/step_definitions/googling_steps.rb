Given(/^I want to look up "([^"]*)"$/) do |search_term|
  @search_term = search_term
end

When(/^I visit Google$/) do
  @page = GooglePage.new(@browser)
end

And(/^I enter my search term$/) do
  @page.search_for(@search_term)
end

And(/^click search$/) do
  @page.search_button.click
end

Then(/^I see results about what I wanted to look up$/) do
  expect(@page.first_result).to match(@search_term)
end
