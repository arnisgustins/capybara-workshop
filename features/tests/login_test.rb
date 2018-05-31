class LoginTest
  def initialize(pages)
    @pages = pages
  end

  def load_home_page
    @pages.page_home.load
    @pages.page_home.isVisible
  end

  def validate_sign_up
    signup_user = Users.signup_form_user
    @pages.page_home.openSignUp
    @pages.page_home.enterEmailSignUp(signup_user.email)
    @pages.page_home.enterPasswordsSignUp(signup_user.password)
    @pages.page_home.enterProjectSignUp(signup_user.project)
    @pages.page_home.closeSignUp
  end

  def invalid_sign_in
    signin_user = Users.signin_form_user
    @pages.page_home.openSignIn
    @pages.page_home.enterEmailSignIn(signin_user.email)
    @pages.page_home.enterPasswordSignIn(signin_user.password)
    @pages.page_home.isSignInErrorVisible
  end

end