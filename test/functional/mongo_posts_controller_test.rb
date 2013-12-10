require 'test_helper'

class MongoPostsControllerTest < ActionController::TestCase
  setup do
    @mongo_post = mongo_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mongo_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mongo_post" do
    assert_difference('MongoPost.count') do
      post :create, mongo_post: @mongo_post.attributes
    end

    assert_redirected_to mongo_post_path(assigns(:mongo_post))
  end

  test "should show mongo_post" do
    get :show, id: @mongo_post.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mongo_post.to_param
    assert_response :success
  end

  test "should update mongo_post" do
    put :update, id: @mongo_post.to_param, mongo_post: @mongo_post.attributes
    assert_redirected_to mongo_post_path(assigns(:mongo_post))
  end

  test "should destroy mongo_post" do
    assert_difference('MongoPost.count', -1) do
      delete :destroy, id: @mongo_post.to_param
    end

    assert_redirected_to mongo_posts_path
  end
end
