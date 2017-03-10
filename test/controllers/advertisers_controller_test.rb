require 'test_helper'

class AdvertisersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @advertiser = advertisers(:one)
  end

  test "should get index" do
    get advertisers_url
    assert_response :success
  end

  test "should get new" do
    get new_advertiser_url
    assert_response :success
  end

  test "should create advertiser" do
    assert_difference('Advertiser.count') do
      post advertisers_url, params: { advertiser: { active: @advertiser.active, active_url: @advertiser.active_url, address: @advertiser.address, bank: @advertiser.bank, cif: @advertiser.cif, city: @advertiser.city, duration: @advertiser.duration, entity_id: @advertiser.entity_id, name: @advertiser.name, other: @advertiser.other, paypal: @advertiser.paypal, postal_code: @advertiser.postal_code, price: @advertiser.price, start_date: @advertiser.start_date, url1: @advertiser.url1, url2: @advertiser.url2, url3: @advertiser.url3 } }
    end

    assert_redirected_to advertiser_url(Advertiser.last)
  end

  test "should show advertiser" do
    get advertiser_url(@advertiser)
    assert_response :success
  end

  test "should get edit" do
    get edit_advertiser_url(@advertiser)
    assert_response :success
  end

  test "should update advertiser" do
    patch advertiser_url(@advertiser), params: { advertiser: { active: @advertiser.active, active_url: @advertiser.active_url, address: @advertiser.address, bank: @advertiser.bank, cif: @advertiser.cif, city: @advertiser.city, duration: @advertiser.duration, entity_id: @advertiser.entity_id, name: @advertiser.name, other: @advertiser.other, paypal: @advertiser.paypal, postal_code: @advertiser.postal_code, price: @advertiser.price, start_date: @advertiser.start_date, url1: @advertiser.url1, url2: @advertiser.url2, url3: @advertiser.url3 } }
    assert_redirected_to advertiser_url(@advertiser)
  end

  test "should destroy advertiser" do
    assert_difference('Advertiser.count', -1) do
      delete advertiser_url(@advertiser)
    end

    assert_redirected_to advertisers_url
  end
end
