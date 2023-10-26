Feature: withdraw
    As a customer
    I want to withdraw from my account using ATM

Background:
    Given a customer with id 4 and pin 1234 with balance 9000 exists
    When I login to ATM with id 4 and pin 1234

Scenario: Withdraw amount less than balance
    When I withdraw 6969 from ATM
    Then my account balance is 2031

Scenario: Withdraw amount more than balance
    When I overdraw 10000 from ATM
    Then my account balance is 9000