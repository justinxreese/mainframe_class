Given(/^I want to look up "([^"]*)"$/) do |search_term|
  @search_term = search_term
end

When(/^I visit Google$/) do
  @browser.goto 'https://google.com'
end

And(/^I enter my search term$/) do
  @browser.text_field(id: 'lst-ib').set @search_term
end

And(/^click search$/) do
  @browser.button(name: 'btnG').click
end

Then(/^I see results about what I wanted to look up$/) do
  sleep 4
  page_content = @browser.divs(class: 'st').first.text
  expect(page_content).to match(@search_term)
end
