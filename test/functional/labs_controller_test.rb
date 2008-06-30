require 'test_helper'

class LabsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:labs)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_lab
    assert_difference('Lab.count') do
      post :create, :lab => { }
    end

    assert_redirected_to lab_path(assigns(:lab))
  end

  def test_should_show_lab
    get :show, :id => labs(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => labs(:one).id
    assert_response :success
  end

  def test_should_update_lab
    put :update, :id => labs(:one).id, :lab => { }
    assert_redirected_to lab_path(assigns(:lab))
  end

  def test_should_destroy_lab
    assert_difference('Lab.count', -1) do
      delete :destroy, :id => labs(:one).id
    end

    assert_redirected_to labs_path
  end
end
