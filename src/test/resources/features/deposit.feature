# Saran wongkum 6410451415

Feature: Deposit
  As a customer
  I wan to deposit my money to bank's account

  Background:
    Given a customer with id 5 and pin 1150 exists
    When I login to ATM with id 5 and pin 1150

  Scenario: deposit amount must not less than 0
    When I deposit 10 to my account
    Then my account balance is 10