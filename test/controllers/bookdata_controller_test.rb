require 'test_helper'

class BookdataControllerTest < ActionController::TestCase
  setup do
    @bookdatum = bookdata(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bookdata)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bookdatum" do
    assert_difference('Bookdatum.count') do
      post :create, bookdatum: { authors: @bookdatum.authors, price: @bookdatum.price, published: @bookdatum.published, title: @bookdatum.title }
    end

    assert_redirected_to bookdatum_path(assigns(:bookdatum))
  end

  test "should show bookdatum" do
    get :show, id: @bookdatum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bookdatum
    assert_response :success
  end

  test "should update bookdatum" do
    patch :update, id: @bookdatum, bookdatum: { authors: @bookdatum.authors, price: @bookdatum.price, published: @bookdatum.published, title: @bookdatum.title }
    assert_redirected_to bookdatum_path(assigns(:bookdatum))
  end

  test "should destroy bookdatum" do
    assert_difference('Bookdatum.count', -1) do
      delete :destroy, id: @bookdatum
    end

    assert_redirected_to bookdata_path
  end
end
