require 'test_helper'

class ChiensControllerTest < ActionController::TestCase
  setup do
    @chien = chiens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chiens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chien" do
    assert_difference('Chien.count') do
      post :create, chien: { nom: @chien.nom, race: @chien.race }
    end

    assert_redirected_to chien_path(assigns(:chien))
  end

  test "should show chien" do
    get :show, id: @chien
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chien
    assert_response :success
  end

  test "should update chien" do
    patch :update, id: @chien, chien: { nom: @chien.nom, race: @chien.race }
    assert_redirected_to chien_path(assigns(:chien))
  end

  test "should destroy chien" do
    assert_difference('Chien.count', -1) do
      delete :destroy, id: @chien
    end

    assert_redirected_to chiens_path
  end
end
