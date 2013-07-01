Feature: Add new employee
    In order to allow a new employee to access the system
    As an admin
    I want to add a new user to the system 
    Scenario: New link is clicked from the employee page
        Given I am logged in as an admin
        And I am on the employee page
        When I follow "New"
        Then I should be on the new employee page
    Scenario Outline: Required text fields are blank 
        Given I am logged in as an admin
        And I am on the new employee page
        When I fill in "" for ""
        And I press "Save"
        Then I should see an error for ""

        Examples:
            | First name |
            | Last name  |
            | Email      |
            | Password   |