require 'test_helper'

class GameActionsControllerTest < ActionController::TestCase
  setup do
    @game_action = game_actions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:game_actions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create game_action" do
    assert_difference('GameAction.count') do
      post :create, game_action: { description: @game_action.description }
    end

    assert_redirected_to game_action_path(assigns(:game_action))
  end

  test "should show game_action" do
    get :show, id: @game_action
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @game_action
    assert_response :success
  end

  test "should update game_action" do
    patch :update, id: @game_action, game_action: { description: @game_action.description }
    assert_redirected_to game_action_path(assigns(:game_action))
  end

  test "should destroy game_action" do
    assert_difference('GameAction.count', -1) do
      delete :destroy, id: @game_action
    end

    assert_redirected_to game_actions_path
  end
end
