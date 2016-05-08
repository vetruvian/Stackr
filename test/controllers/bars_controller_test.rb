require 'test_helper'

class BarsControllerTest < ActionController::TestCase
  setup do
    @bar = bars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bar" do
    assert_difference('Bar.count') do
      post :create, bar: { comments: @bar.comments, condition: @bar.condition, country: @bar.country, dateOfPurchase: @bar.dateOfPurchase, mintYear: @bar.mintYear, name: @bar.name, purchasePrice: @bar.purchasePrice, quantity: @bar.quantity, serialNumber: @bar.serialNumber, silverContent: @bar.silverContent, spotAtPurchase: @bar.spotAtPurchase, user_id: @bar.user_id }
    end

    assert_redirected_to bar_path(assigns(:bar))
  end

  test "should show bar" do
    get :show, id: @bar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bar
    assert_response :success
  end

  test "should update bar" do
    patch :update, id: @bar, bar: { comments: @bar.comments, condition: @bar.condition, country: @bar.country, dateOfPurchase: @bar.dateOfPurchase, mintYear: @bar.mintYear, name: @bar.name, purchasePrice: @bar.purchasePrice, quantity: @bar.quantity, serialNumber: @bar.serialNumber, silverContent: @bar.silverContent, spotAtPurchase: @bar.spotAtPurchase, user_id: @bar.user_id }
    assert_redirected_to bar_path(assigns(:bar))
  end

  test "should destroy bar" do
    assert_difference('Bar.count', -1) do
      delete :destroy, id: @bar
    end

    assert_redirected_to bars_path
  end
end
