require 'test_helper'

class JunksControllerTest < ActionController::TestCase
  setup do
    @junk = junks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:junks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create junk" do
    assert_difference('Junk.count') do
      post :create, junk: { comments: @junk.comments, condition: @junk.condition, country: @junk.country, dateOfPurchase: @junk.dateOfPurchase, name: @junk.name, purchasePrice: @junk.purchasePrice, quantity: @junk.quantity, silverContent: @junk.silverContent, silverPercentage: @junk.silverPercentage, spotAtPurchase: @junk.spotAtPurchase, user_id: @junk.user_id }
    end

    assert_redirected_to junk_path(assigns(:junk))
  end

  test "should show junk" do
    get :show, id: @junk
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @junk
    assert_response :success
  end

  test "should update junk" do
    patch :update, id: @junk, junk: { comments: @junk.comments, condition: @junk.condition, country: @junk.country, dateOfPurchase: @junk.dateOfPurchase, name: @junk.name, purchasePrice: @junk.purchasePrice, quantity: @junk.quantity, silverContent: @junk.silverContent, silverPercentage: @junk.silverPercentage, spotAtPurchase: @junk.spotAtPurchase, user_id: @junk.user_id }
    assert_redirected_to junk_path(assigns(:junk))
  end

  test "should destroy junk" do
    assert_difference('Junk.count', -1) do
      delete :destroy, id: @junk
    end

    assert_redirected_to junks_path
  end
end
