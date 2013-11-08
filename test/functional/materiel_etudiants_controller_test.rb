require 'test_helper'

class MaterielEtudiantsControllerTest < ActionController::TestCase
  setup do
    @materiel_etudiant = materiel_etudiants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:materiel_etudiants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create materiel_etudiant" do
    assert_difference('MaterielEtudiant.count') do
      post :create, materiel_etudiant: {  }
    end

    assert_redirected_to materiel_etudiant_path(assigns(:materiel_etudiant))
  end

  test "should show materiel_etudiant" do
    get :show, id: @materiel_etudiant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @materiel_etudiant
    assert_response :success
  end

  test "should update materiel_etudiant" do
    put :update, id: @materiel_etudiant, materiel_etudiant: {  }
    assert_redirected_to materiel_etudiant_path(assigns(:materiel_etudiant))
  end

  test "should destroy materiel_etudiant" do
    assert_difference('MaterielEtudiant.count', -1) do
      delete :destroy, id: @materiel_etudiant
    end

    assert_redirected_to materiel_etudiants_path
  end
end
