
When("I am on Appimation home page") do
  @pages.page_home.load
  @pages.page_home.visible?
end

When("I open Signup") do
  @pages.page_home.openSignUp
end

Then ("I fill Signup with email {string}, password {string}, project name {string}") do |email, password, project|
  @pages.page_home.fillSignUp(email, password, project)
end

Then("I close Signup") do
  @pages.page_home.closeSignUp
end 

When("I open Sign in") do
  @pages.page_home.openSignIn
end

Then("I try to Sign in with email {string} and password {string}") do |email, password|
  @pages.page_home.fillSignIn(email, password)
end



