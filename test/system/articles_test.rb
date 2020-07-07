require "application_system_test_case"

class ArticlesTest < ApplicationSystemTestCase
  test "view home page" do
    visit "/"
    assert_selector "h1", text: "How to build webapps that scale"
  end

  test "viewing a article" do
    visit "/article/webapps"
    assert_selector "h1", text: "How to build webapps that scale"
  end
end
