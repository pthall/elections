require 'test_helper'

class CandidatesControllerTest < ActionController::TestCase
  setup do
    @candidate = candidates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:candidates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create candidate" do
    assert_difference('Candidate.count') do
      post :create, candidate: { area: @candidate.area, election_date: @candidate.election_date, email: @candidate.email, homepage: @candidate.homepage, mailing_address: @candidate.mailing_address, name: @candidate.name, office: @candidate.office, party: @candidate.party, party: @candidate.party }
    end

    assert_redirected_to candidate_path(assigns(:candidate))
  end

  test "should show candidate" do
    get :show, id: @candidate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @candidate
    assert_response :success
  end

  test "should update candidate" do
    put :update, id: @candidate, candidate: { area: @candidate.area, election_date: @candidate.election_date, email: @candidate.email, homepage: @candidate.homepage, mailing_address: @candidate.mailing_address, name: @candidate.name, office: @candidate.office, party: @candidate.party, party: @candidate.party }
    assert_redirected_to candidate_path(assigns(:candidate))
  end

  test "should destroy candidate" do
    assert_difference('Candidate.count', -1) do
      delete :destroy, id: @candidate
    end

    assert_redirected_to candidates_path
  end
end
