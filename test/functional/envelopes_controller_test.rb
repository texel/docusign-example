require 'test_helper'

class EnvelopesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:envelopes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create envelope" do
    assert_difference('Envelope.count') do
      post :create, :envelope => { }
    end

    assert_redirected_to envelope_path(assigns(:envelope))
  end

  test "should show envelope" do
    get :show, :id => envelopes(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => envelopes(:one).id
    assert_response :success
  end

  test "should update envelope" do
    put :update, :id => envelopes(:one).id, :envelope => { }
    assert_redirected_to envelope_path(assigns(:envelope))
  end

  test "should destroy envelope" do
    assert_difference('Envelope.count', -1) do
      delete :destroy, :id => envelopes(:one).id
    end

    assert_redirected_to envelopes_path
  end
end
