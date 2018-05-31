When("I am on Appimation home page") do
  @tests.login_tests.load_home_page
end

When("Then I Open, Fill and close Sign Up page") do
  @tests.login_tests.validate_sign_up
end

When("I open Sign In and try to login") do
  @tests.login_tests.invalid_sign_in
end





