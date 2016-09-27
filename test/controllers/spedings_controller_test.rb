require 'test_helper'

class SpedingsControllerTest < ActionController::TestCase
  setup do
    @speding = spedings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spedings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create speding" do
    assert_difference('Speding.count') do
      post :create, speding: {  }
    end

    assert_redirected_to speding_path(assigns(:speding))
  end

  test "should show speding" do
    get :show, id: @speding
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @speding
    assert_response :success
  end

  test "should update speding" do
    patch :update, id: @speding, speding: {  }
    assert_redirected_to speding_path(assigns(:speding))
  end

  test "should destroy speding" do
    assert_difference('Speding.count', -1) do
      delete :destroy, id: @speding
    end

    assert_redirected_to spedings_path
  end
end
