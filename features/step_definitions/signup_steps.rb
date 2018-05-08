When(/^I am on Appimation home page/) do
  visit('/legacy')
  unless find(:css, '#logo').visible?
    raise "Logo not visible"
  end
end



When(/^I open Signup/) do
  find(:css, '#signup-b').click
  unless find(:css, '#signup').visible?
    raise "Signup page not visible"
  end
end

Then ("I fill Signup") do
  find(:css, "#signup input[name='login']").send_keys('email@gmail.com')
  find(:css, "#signup input[name='password1']").send_keys('password')
  find(:css, "#signup input[name='password2']").send_keys('password')
  find(:css, "#signup input[name='project_name']").send_keys('Capybara Workshop')
end


Then("I close Signup") do
  find(:css, '#signup .closecross').click
  if find(:css, '#signup').visible?
    raise "Signup page not closed"
  end
end

When("I open Sign in") do
find(:css, '#login-b').click
  unless find(:css, '#login').visible?
    raise "Sign in page not visible"
  end
end

Then("I try to Sign in") do
  find(:css, "#login input[name='login']").send_keys('name@email.com')
  find(:css, "#login input[name='password']").send_keys('password')
  find(:css, ".button.button-block.innerButton").click
  unless find(:css, "form[action='/login'] .alert-danger .errorText").visible?
    raise "Errr not visible"
  end
end



