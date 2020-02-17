require "application_system_test_case"

class QuestionsControllerTest < ApplicationSystemTestCase
  test "visiting /ask renders form" do
    visit ask_url
    assert_selector "h1", text: "Ask your coach a question..."
  end

  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
  end

  test "I am going to work gets a positive answer" do
    visit ask_url
    fill_in "question", with: "I am going to work"
    click_on "Ask"

    assert_text "Great!"
  end

    test "Coach will tell you to go to work if you ask a question" do
    visit ask_url
    fill_in "question", with: "Can I go shopping?"
    click_on "Ask"

    assert_text "Silly question, get dressed and go to work!"
  end
end
