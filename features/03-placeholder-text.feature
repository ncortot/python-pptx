Feature: Change text of a placeholder shape
  In order to achieve consistent placement and style of titles and body text
  As a developer using python-pptx
  I need to set the text in a placeholder shape

  Scenario: Set the title of a title slide
     Given I have a reference to a slide
      When I set the title text of the slide
       And I save the presentation
      Then the text appears in the title placeholder
