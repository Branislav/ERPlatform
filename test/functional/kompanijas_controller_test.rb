require 'test_helper'

class KompanijasControllerTest < ActionController::TestCase
  setup do
    @kompanija = kompanijas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kompanijas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kompanija" do
    assert_difference('Kompanija.count') do
      post :create, kompanija: { adress: @kompanija.adress, comment: @kompanija.comment, dateBegin: @kompanija.dateBegin, dateEnd: @kompanija.dateEnd, lc: @kompanija.lc, name: @kompanija.name, pib: @kompanija.pib }
    end

    assert_redirected_to kompanija_path(assigns(:kompanija))
  end

  test "should show kompanija" do
    get :show, id: @kompanija
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kompanija
    assert_response :success
  end

  test "should update kompanija" do
    put :update, id: @kompanija, kompanija: { adress: @kompanija.adress, comment: @kompanija.comment, dateBegin: @kompanija.dateBegin, dateEnd: @kompanija.dateEnd, lc: @kompanija.lc, name: @kompanija.name, pib: @kompanija.pib }
    assert_redirected_to kompanija_path(assigns(:kompanija))
  end

  test "should destroy kompanija" do
    assert_difference('Kompanija.count', -1) do
      delete :destroy, id: @kompanija
    end

    assert_redirected_to kompanijas_path
  end
end
