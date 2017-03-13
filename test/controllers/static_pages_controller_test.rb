require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get tour" do
    get static_pages_tour_url
    assert_response :success
  end

  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
  end

  test "should get pricing" do
    get static_pages_pricing_url
    assert_response :success
  end

  test "should get testimonials" do
    get static_pages_testimonials_url
    assert_response :success
  end

end
