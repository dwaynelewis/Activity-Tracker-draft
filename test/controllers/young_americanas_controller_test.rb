require 'test_helper'

class YoungAmericanasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @young_americana = young_americanas(:one)
  end

  test "should get index" do
    get young_americanas_url
    assert_response :success
  end

  test "should get new" do
    get new_young_americana_url
    assert_response :success
  end

  test "should create young_americana" do
    assert_difference('YoungAmericana.count') do
      post young_americanas_url, params: { young_americana: { description: @young_americana.description, hours: @young_americana.hours, period: @young_americana.period } }
    end

    assert_redirected_to young_americana_url(YoungAmericana.last)
  end

  test "should show young_americana" do
    get young_americana_url(@young_americana)
    assert_response :success
  end

  test "should get edit" do
    get edit_young_americana_url(@young_americana)
    assert_response :success
  end

  test "should update young_americana" do
    patch young_americana_url(@young_americana), params: { young_americana: { description: @young_americana.description, hours: @young_americana.hours, period: @young_americana.period } }
    assert_redirected_to young_americana_url(@young_americana)
  end

  test "should destroy young_americana" do
    assert_difference('YoungAmericana.count', -1) do
      delete young_americana_url(@young_americana)
    end

    assert_redirected_to young_americanas_url
  end
end
