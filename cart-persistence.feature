Feature: Cart persistence

  @tc_TC_002
  Scenario: An item remains in the cart after reloading
    # Traceability: TC-002 <- REQ-002 (demo storefront)
    Given I open the "/cart" page
    Given the control "ul > li" is visible
    When I reload the page
    Then the control "ul > li" has text "Wireless Mouse × 1 = $19.99"
