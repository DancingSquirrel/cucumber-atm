# Saran wongkum 6410451415

Feature: Deposit
  As a customer
  I wan to deposit my money to bank's account

  Background:
    Given a customer with id 69 and pin 1234 with balance 543 exists
    When I login to ATM with id 69 and pin 1234

  Scenario: deposit amount must not less than 0
    When I deposit 123 to my account
    Then my account balance is 666