require 'test_helper'

class IssuesControllerTest < ActionController::TestCase
  setup do
    @issue = issues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:issues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create issue" do
    assert_difference('Issue.count') do
      post :create, issue: { browser: @issue.browser, date: @issue.date, description: @issue.description, location: @issue.location, name: @issue.name, name_of_db: @issue.name_of_db, opac_error: @issue.opac_error, os: @issue.os, patron_email: @issue.patron_email, patron_name: @issue.patron_name, patron_verify: @issue.patron_verify, source: @issue.source, who_experienced: @issue.who_experienced }
    end

    assert_redirected_to issue_path(assigns(:issue))
  end

  test "should show issue" do
    get :show, id: @issue
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @issue
    assert_response :success
  end

  test "should update issue" do
    patch :update, id: @issue, issue: { browser: @issue.browser, date: @issue.date, description: @issue.description, location: @issue.location, name: @issue.name, name_of_db: @issue.name_of_db, opac_error: @issue.opac_error, os: @issue.os, patron_email: @issue.patron_email, patron_name: @issue.patron_name, patron_verify: @issue.patron_verify, source: @issue.source, who_experienced: @issue.who_experienced }
    assert_redirected_to issue_path(assigns(:issue))
  end

  test "should destroy issue" do
    assert_difference('Issue.count', -1) do
      delete :destroy, id: @issue
    end

    assert_redirected_to issues_path
  end
end
