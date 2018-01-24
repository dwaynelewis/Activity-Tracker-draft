require 'test_helper'

class SexEdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sex_ed = sex_eds(:one)
  end

  test "should get index" do
    get sex_eds_url
    assert_response :success
  end

  test "should get new" do
    get new_sex_ed_url
    assert_response :success
  end

  test "should create sex_ed" do
    assert_difference('SexEd.count') do
      post sex_eds_url, params: { sex_ed: { Description: @sex_ed.Description, Hours: @sex_ed.Hours, Period: @sex_ed.Period } }
    end

    assert_redirected_to sex_ed_url(SexEd.last)
  end

  test "should show sex_ed" do
    get sex_ed_url(@sex_ed)
    assert_response :success
  end

  test "should get edit" do
    get edit_sex_ed_url(@sex_ed)
    assert_response :success
  end

  test "should update sex_ed" do
    patch sex_ed_url(@sex_ed), params: { sex_ed: { Description: @sex_ed.Description, Hours: @sex_ed.Hours, Period: @sex_ed.Period } }
    assert_redirected_to sex_ed_url(@sex_ed)
  end

  test "should destroy sex_ed" do
    assert_difference('SexEd.count', -1) do
      delete sex_ed_url(@sex_ed)
    end

    assert_redirected_to sex_eds_url
  end
end
