require 'test_helper'

class DateLookupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @date_lookup = date_lookups(:one)
  end

  test "should get index" do
    get date_lookups_url
    assert_response :success
  end

  test "should get new" do
    get new_date_lookup_url
    assert_response :success
  end

  test "should create date_lookup" do
    assert_difference('DateLookup.count') do
      post date_lookups_url, params: { date_lookup: { date: @date_lookup.date, day_of_month: @date_lookup.day_of_month, fiscal_month: @date_lookup.fiscal_month, fiscal_quarter: @date_lookup.fiscal_quarter, fiscal_week_of_quarter: @date_lookup.fiscal_week_of_quarter, fiscal_week_of_year: @date_lookup.fiscal_week_of_year, fiscal_year: @date_lookup.fiscal_year, month: @date_lookup.month, quarter: @date_lookup.quarter, week_of_quarter: @date_lookup.week_of_quarter, week_of_year: @date_lookup.week_of_year, year: @date_lookup.year } }
    end

    assert_redirected_to date_lookup_url(DateLookup.last)
  end

  test "should show date_lookup" do
    get date_lookup_url(@date_lookup)
    assert_response :success
  end

  test "should get edit" do
    get edit_date_lookup_url(@date_lookup)
    assert_response :success
  end

  test "should update date_lookup" do
    patch date_lookup_url(@date_lookup), params: { date_lookup: { date: @date_lookup.date, day_of_month: @date_lookup.day_of_month, fiscal_month: @date_lookup.fiscal_month, fiscal_quarter: @date_lookup.fiscal_quarter, fiscal_week_of_quarter: @date_lookup.fiscal_week_of_quarter, fiscal_week_of_year: @date_lookup.fiscal_week_of_year, fiscal_year: @date_lookup.fiscal_year, month: @date_lookup.month, quarter: @date_lookup.quarter, week_of_quarter: @date_lookup.week_of_quarter, week_of_year: @date_lookup.week_of_year, year: @date_lookup.year } }
    assert_redirected_to date_lookup_url(@date_lookup)
  end

  test "should destroy date_lookup" do
    assert_difference('DateLookup.count', -1) do
      delete date_lookup_url(@date_lookup)
    end

    assert_redirected_to date_lookups_url
  end
end
