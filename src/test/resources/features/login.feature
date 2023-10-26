Feature: login
    As a customer
    I want to login to ATM
    so that I can do transactions

Background:
    Given a customer with id 69 and pin 1234 exists

Scenario: Correct id and pin
    When I login to ATM with id 69 and pin 1234
    Then I can login

Scenario: Incorrect pin
    When I login to ATM with id 69 and pin 1233
    Then I cannot login
