require 'test_helper'

class SequencesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:sequences)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_sequence
    assert_difference('Sequence.count') do
      post :create, :sequence => { }
    end

    assert_redirected_to sequence_path(assigns(:sequence))
  end

  def test_should_show_sequence
    get :show, :id => sequences(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => sequences(:one).id
    assert_response :success
  end

  def test_should_update_sequence
    put :update, :id => sequences(:one).id, :sequence => { }
    assert_redirected_to sequence_path(assigns(:sequence))
  end

  def test_should_destroy_sequence
    assert_difference('Sequence.count', -1) do
      delete :destroy, :id => sequences(:one).id
    end

    assert_redirected_to sequences_path
  end
end
