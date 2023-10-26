Feature: transfer
    As a customer
    I want to transfer money from my account to my friend's account

Background:
    Given a customer with id 6 and pin 1234 with balance 543 exists
    And a customer with id 9 and pin 5678 with balance 123 exists
    When I login to ATM with id 6 and pin 1234

Scenario: Transfer amount less than my balance
    When I transfer 543 to customer id 9
    Then my account balance is 0
    And customer id 2 account balance is 666

