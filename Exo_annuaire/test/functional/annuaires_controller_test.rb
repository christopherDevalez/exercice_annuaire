require 'test_helper'

class AnnuairesControllerTest < ActionController::TestCase
  setup do
    @annuaire = annuaires(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:annuaires)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create annuaire" do
    assert_difference('Annuaire.count') do
      post :create, annuaire: { email: @annuaire.email, nom: @annuaire.nom, phone: @annuaire.phone, prenom: @annuaire.prenom }
    end

    assert_redirected_to annuaire_path(assigns(:annuaire))
  end

  test "should show annuaire" do
    get :show, id: @annuaire
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @annuaire
    assert_response :success
  end

  test "should update annuaire" do
    put :update, id: @annuaire, annuaire: { email: @annuaire.email, nom: @annuaire.nom, phone: @annuaire.phone, prenom: @annuaire.prenom }
    assert_redirected_to annuaire_path(assigns(:annuaire))
  end

  test "should destroy annuaire" do
    assert_difference('Annuaire.count', -1) do
      delete :destroy, id: @annuaire
    end

    assert_redirected_to annuaires_path
  end
end
