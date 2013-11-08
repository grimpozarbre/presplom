require 'test_helper'

class Admin::ModeleEmailsControllerTest < ActionController::TestCase
  setup do
    @admin_modele_email = admin_modele_emails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_modele_emails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_modele_email" do
    assert_difference('Admin::ModeleEmail.count') do
      post :create, admin_modele_email: {  }
    end

    assert_redirected_to admin_modele_email_path(assigns(:admin_modele_email))
  end

  test "should show admin_modele_email" do
    get :show, id: @admin_modele_email
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_modele_email
    assert_response :success
  end

  test "should update admin_modele_email" do
    put :update, id: @admin_modele_email, admin_modele_email: {  }
    assert_redirected_to admin_modele_email_path(assigns(:admin_modele_email))
  end

  test "should destroy admin_modele_email" do
    assert_difference('Admin::ModeleEmail.count', -1) do
      delete :destroy, id: @admin_modele_email
    end

    assert_redirected_to admin_modele_emails_path
  end
end
