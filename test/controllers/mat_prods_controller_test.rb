require 'test_helper'

class MatProdsControllerTest < ActionController::TestCase
  setup do
    @mat_prod = mat_prods(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mat_prods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mat_prod" do
    assert_difference('MatProd.count') do
      post :create, mat_prod: { cantidad: @mat_prod.cantidad, material_id: @mat_prod.material_id, product_id: @mat_prod.product_id }
    end

    assert_redirected_to mat_prod_path(assigns(:mat_prod))
  end

  test "should show mat_prod" do
    get :show, id: @mat_prod
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mat_prod
    assert_response :success
  end

  test "should update mat_prod" do
    patch :update, id: @mat_prod, mat_prod: { cantidad: @mat_prod.cantidad, material_id: @mat_prod.material_id, product_id: @mat_prod.product_id }
    assert_redirected_to mat_prod_path(assigns(:mat_prod))
  end

  test "should destroy mat_prod" do
    assert_difference('MatProd.count', -1) do
      delete :destroy, id: @mat_prod
    end

    assert_redirected_to mat_prods_path
  end
end
