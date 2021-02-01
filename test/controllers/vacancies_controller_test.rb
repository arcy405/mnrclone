require 'test_helper'

class VacanciesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get vacancies_index_url
    assert_response :success
  end

  test "should get new" do
    get vacancies_new_url
    assert_response :success
  end

end
