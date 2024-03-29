require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @page = pages(:one)
  end

  test "should get index" do
    get pages_url
    assert_response :success
  end

  test "should get new" do
    get new_page_url
    assert_response :success
  end

  test "should create page" do
    assert_difference('Page.count') do
      post pages_url, params: { page: { allow_comments: @page.allow_comments, blog_id: @page.blog_id, cached_content: @page.cached_content, content: @page.content, disqus_identifier: @page.disqus_identifier, header_photo: @page.header_photo, order: @page.order, parent_id: @page.parent_id, permalink: @page.permalink, photos_count: @page.photos_count, published_at: @page.published_at, short_description: @page.short_description, template_id: @page.template_id, title: @page.title, type: @page.type, videos_count: @page.videos_count } }
    end

    assert_redirected_to page_path(Page.last)
  end

  test "should show page" do
    get page_url(@page)
    assert_response :success
  end

  test "should get edit" do
    get edit_page_url(@page)
    assert_response :success
  end

  test "should update page" do
    patch page_url(@page), params: { page: { allow_comments: @page.allow_comments, blog_id: @page.blog_id, cached_content: @page.cached_content, content: @page.content, disqus_identifier: @page.disqus_identifier, header_photo: @page.header_photo, order: @page.order, parent_id: @page.parent_id, permalink: @page.permalink, photos_count: @page.photos_count, published_at: @page.published_at, short_description: @page.short_description, template_id: @page.template_id, title: @page.title, type: @page.type, videos_count: @page.videos_count } }
    assert_redirected_to page_path(@page)
  end

  test "should destroy page" do
    assert_difference('Page.count', -1) do
      delete page_url(@page)
    end

    assert_redirected_to pages_path
  end
end
