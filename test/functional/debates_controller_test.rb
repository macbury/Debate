require 'test_helper'

class DebatesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:debates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create debate" do
    assert_difference('Debate.count') do
      post :create, :debate => { }
    end

    assert_redirected_to debate_path(assigns(:debate))
  end

  test "should show debate" do
    get :show, :id => debates(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => debates(:one).to_param
    assert_response :success
  end

  test "should update debate" do
    put :update, :id => debates(:one).to_param, :debate => { }
    assert_redirected_to debate_path(assigns(:debate))
  end

  test "should destroy debate" do
    assert_difference('Debate.count', -1) do
      delete :destroy, :id => debates(:one).to_param
    end

    assert_redirected_to debates_path
  end
end
