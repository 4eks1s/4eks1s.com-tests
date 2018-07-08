When(/^I request Homework page$/) do
  getHomeWorkPage()
end

When(/^I Upload (.*) Homewrok$/) do |time|
  uploadHomework(getHomeWorkData('pos' + time))
end


When(/^I Uplaod Empty Homework$/) do
  uploadHomework(getHomeWorkData('empty'))
end