require 'test_helper'

class StundentsControllerTest < ActionController::TestCase
  setup do
    @stundent = stundents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stundents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stundent" do
    assert_difference('Stundent.count') do
      post :create, stundent: { apellido: @stundent.apellido, comuna: @stundent.comuna, direccion: @stundent.direccion, jornada: @stundent.jornada, nombre: @stundent.nombre, parent_id: @stundent.parent_id, rut: @stundent.rut, school_id: @stundent.school_id, van_id: @stundent.van_id }
    end

    assert_redirected_to stundent_path(assigns(:stundent))
  end

  test "should show stundent" do
    get :show, id: @stundent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stundent
    assert_response :success
  end

  test "should update stundent" do
    patch :update, id: @stundent, stundent: { apellido: @stundent.apellido, comuna: @stundent.comuna, direccion: @stundent.direccion, jornada: @stundent.jornada, nombre: @stundent.nombre, parent_id: @stundent.parent_id, rut: @stundent.rut, school_id: @stundent.school_id, van_id: @stundent.van_id }
    assert_redirected_to stundent_path(assigns(:stundent))
  end

  test "should destroy stundent" do
    assert_difference('Stundent.count', -1) do
      delete :destroy, id: @stundent
    end

    assert_redirected_to stundents_path
  end
end
