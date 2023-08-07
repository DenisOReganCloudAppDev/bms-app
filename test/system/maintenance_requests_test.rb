require "application_system_test_case"

class MaintenanceRequestsTest < ApplicationSystemTestCase
  setup do
    @maintenance_request = maintenance_requests(:one)
  end

  test "visiting the index" do
    visit maintenance_requests_url
    assert_selector "h1", text: "Maintenance requests"
  end

  test "should create maintenance request" do
    visit maintenance_requests_url
    click_on "New maintenance request"

    fill_in "Comment", with: @maintenance_request.comment
    check "Completed" if @maintenance_request.completed
    fill_in "Requestdate", with: @maintenance_request.requestDate
    fill_in "Requestinfo", with: @maintenance_request.requestinfo
    fill_in "Tenant", with: @maintenance_request.tenant_id
    click_on "Create Maintenance request"

    assert_text "Maintenance request was successfully created"
    click_on "Back"
  end

  test "should update Maintenance request" do
    visit maintenance_request_url(@maintenance_request)
    click_on "Edit this maintenance request", match: :first

    fill_in "Comment", with: @maintenance_request.comment
    check "Completed" if @maintenance_request.completed
    fill_in "Requestdate", with: @maintenance_request.requestDate
    fill_in "Requestinfo", with: @maintenance_request.requestinfo
    fill_in "Tenant", with: @maintenance_request.tenant_id
    click_on "Update Maintenance request"

    assert_text "Maintenance request was successfully updated"
    click_on "Back"
  end

  test "should destroy Maintenance request" do
    visit maintenance_request_url(@maintenance_request)
    click_on "Destroy this maintenance request", match: :first

    assert_text "Maintenance request was successfully destroyed"
  end
end
