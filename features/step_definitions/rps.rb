Given(/^I visit '\/'$/) do
  visit('/')
end

Then(/^I should see a "(.*?)" dropdown$/) do |name|
  assert page.has_select?(name)
end

Then(/^I should see a "(.*?)" button$/) do |name|
  page.has_content?(name)
end

Then(/^"(.*?)" should contain "(.*?)"$/) do |dropdown, option|
  page.has_select?(dropdown, :options => [option])
end

Given(/^I select "(.*?)" from "(.*?)"$/) do |option, dropdown|
  select(option, :from => dropdown)
end

Given(/^I click "(.*?)"$/) do |link|
  click_button(link)
end

Then(/^I should see "(.*?)"$/) do |item|
  page.has_content?(item)
end
