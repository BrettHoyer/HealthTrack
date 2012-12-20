require 'test_helper'

class TurnsControllerTest < ActionController::TestCase
  setup do
    @turn = turns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:turns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create turn" do
    assert_difference('Turn.count') do
      post :create, turn: { reps: @turn.reps, total: @turn.total, weight: @turn.weight }
    end

    assert_redirected_to turn_path(assigns(:turn))
  end

  test "should show turn" do
    get :show, id: @turn
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @turn
    assert_response :success
  end

  test "should update turn" do
    put :update, id: @turn, turn: { reps: @turn.reps, total: @turn.total, weight: @turn.weight }
    assert_redirected_to turn_path(assigns(:turn))
  end

  test "should destroy turn" do
    assert_difference('Turn.count', -1) do
      delete :destroy, id: @turn
    end

    assert_redirected_to turns_path
  end
end
