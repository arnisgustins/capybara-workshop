require 'date'
module Users
  def Users.contact_form_user
    @contact_form_user ||= ContactUs_User.new(args = {name: 'Namename'})
    @contact_form_user
  end

  def Users.contact_form_invalid_user
    @contact_form_invalid_user ||= ContactUs_User.new(args = {email: 'name@name'})
    @contact_form_invalid_user
  end

  def Users.signup_form_user
    @signup_form_user ||= Sign_User.new()
    @signup_form_user
  end

  def Users.signin_form_user
    @signin_form_user ||= Sign_User.new(args = {email: "signin@test.lv"})
    @signin_form_user
  end

  class ContactUs_User
    attr_reader :name, :email, :message
    def initialize(args = {})
      defaults = {name: DateTime.now.strftime('%Q'), email: DateTime.now.strftime('%Q')+'@test.com', message: DateTime.now}
      args = defaults.merge(args)
      @name = args[:name]
      @email = args[:email]
      @message = args[:message]
    end
  end

  class Sign_User
    attr_reader :email, :password, :project
    def initialize(args = {})
      defaults = {email: DateTime.now.strftime('%Q')+'@test.com', password: DateTime.now.strftime('%Q'), project:'Project-'+DateTime.now.strftime}
      args = defaults.merge(args)
      @email = args[:email]
      @password = args[:password]
      @project = args[:project]
    end
  end
end