require 'test_helper'

class PoemDataControllerTest < ActionController::TestCase
  setup do
    @poem_datum = poem_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:poem_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create poem_datum" do
    assert_difference('PoemDatum.count') do
      post :create, poem_datum: { content: @poem_datum.content, title: @poem_datum.title }
    end

    assert_redirected_to poem_datum_path(assigns(:poem_datum))
  end

  test "should show poem_datum" do
    get :show, id: @poem_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @poem_datum
    assert_response :success
  end

  test "should update poem_datum" do
    patch :update, id: @poem_datum, poem_datum: { content: @poem_datum.content, title: @poem_datum.title }
    assert_redirected_to poem_datum_path(assigns(:poem_datum))
  end

  test "should destroy poem_datum" do
    assert_difference('PoemDatum.count', -1) do
      delete :destroy, id: @poem_datum
    end

    assert_redirected_to poem_data_path
  end
end
