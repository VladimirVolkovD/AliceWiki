Feature: Wikipedia search

  Scenario Outline:
    Given Keyword for search is <titleForSearch>
    When User does search
    Then Wiki page <wikiPageWithTitle> is on the first page
    Examples:
      | titleForSearch   | wikiPageWithTitle |
      | "ALICE company"  | "ALICE (company)" |
      | "Google Company" | "Google"          |


  Scenario: Search wiki page for TMS
    Given Keyword for search is 123
    When User does search
    Then Page with title "Elon" opened

    Scenario: T1
      Given I open Facebook URL and create new accounts with below data:
        | name   | email              | twitter         |
        | Aslak  | aslak@cucumber.io  | @aslak_hellesoy |
        | Julien | julien@cucumber.io | @jbpros         |
        | Matt   | matt@cucumber.io   | @mattwynne      |
    
    