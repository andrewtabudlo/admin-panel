require 'test_helper'

class CohortStudentsControllerTest < ActionDispatch::IntegrationTest
  test "should get :new" do
    get cohort_students_:new_url
    assert_response :success
  end

  test "should get :create" do
    get cohort_students_:create_url
    assert_response :success
  end

  test "should get :edit" do
    get cohort_students_:edit_url
    assert_response :success
  end

  test "should get :update" do
    get cohort_students_:update_url
    assert_response :success
  end

end
