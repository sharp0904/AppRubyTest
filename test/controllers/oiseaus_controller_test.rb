require 'test_helper'

class OiseausControllerTest < ActionController::TestCase
  setup do
    @oiseau = oiseaus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:oiseaus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create oiseau" do
    assert_difference('Oiseau.count') do
      post :create, oiseau: { age: @oiseau.age, nom: @oiseau.nom, race: @oiseau.race }
    end

    assert_redirected_to oiseau_path(assigns(:oiseau))
  end

  test "should show oiseau" do
    get :show, id: @oiseau
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @oiseau
    assert_response :success
  end

  test "should update oiseau" do
    patch :update, id: @oiseau, oiseau: { age: @oiseau.age, nom: @oiseau.nom, race: @oiseau.race }
    assert_redirected_to oiseau_path(assigns(:oiseau))
  end

  test "should destroy oiseau" do
    assert_difference('Oiseau.count', -1) do
      delete :destroy, id: @oiseau
    end

    assert_redirected_to oiseaus_path
  end
end
