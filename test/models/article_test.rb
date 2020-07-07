require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  class AuthorTest < ActiveSupport::TestCase
    test "proxies to user" do
      assert_equal articles(:song).author, articles(:song).user
    end
  end

  class BodyToHtmlTest < ActiveSupport::TestCase
    test "converts body to HTML" do
      assert_match(/<p>/, articles(:song).body_to_html)
    end

    test "is HTML safe for embedding in views" do
      assert articles(:song).body_to_html.html_safe?
    end
  end

  class CreatedAtFormattedTest < ActiveSupport::TestCase
    test "formats with ordinal" do
      first = Article.new(created_at: Time.current.change(month: 5, day: 1))
      second = Article.new(created_at: Time.current.change(month: 5, day: 2))
      third = Article.new(created_at: Time.current.change(month: 5, day: 3))

      assert_equal "May 1st", first.created_at_formatted
      assert_equal "May 2nd", second.created_at_formatted
      assert_equal "May 3rd", third.created_at_formatted
    end
  end
end
