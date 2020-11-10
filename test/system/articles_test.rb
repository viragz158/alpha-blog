require "application_system_test_case"

class ArticlesTest < ApplicationSystemTestCase
  test "visiting the new articles page" do
    visit new_article_url
  
    assert_selector "h1", text: "Create a new Article"
  end

  test "viewing the index" do
    visit articles_path
    assert_selector "h1", text: "Articles listing page"
  end

  test "creating an article" do
    visit new_article_url
   
    fill_in "Title", with: "Creating an Article"
    fill_in "Description", with: "Created this article successfully!"
   
    click_on "Save Article"
   
    assert_text "Article was created successfully."
    assert_text "Creating an Article"
  end

  test "viewing the samnple article" do
    visit articles_path
    assert_selector "h1", text: "Articles listing page"
    click_on "Show", match: :first
    assert_text "this is test description"
  end

end
