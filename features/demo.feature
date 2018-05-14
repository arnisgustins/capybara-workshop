Feature: Demo Feature

   Feature: Demo Feature

    Scenario: Fill and close Signup page
        Given I am on Appimation home page
        When I open Signup 
        Then I fill Signup with email "email@email.com", password "password", project name "MyProject"
        And I close Signup

    Scenario: Sign in invalid info
        Given I am on Appimation home page
        When I open Sign in
        Then I try to Sign in with email "email2@email.com" and password "asdasdasdasdasdasdasdasd"