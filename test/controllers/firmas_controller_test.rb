require "test_helper"

class FirmasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @firma = firmas(:one)
  end

  test "should get index" do
    get firmas_url
    assert_response :success
  end

  test "should get new" do
    get new_firma_url
    assert_response :success
  end

  test "should create firma" do
    assert_difference("Firma.count") do
      post firmas_url, params: { firma: { nombre: @firma.nombre, saludo: @firma.saludo } }
    end

    assert_redirected_to firma_url(Firma.last)
  end

  test "should show firma" do
    get firma_url(@firma)
    assert_response :success
  end

  test "should get edit" do
    get edit_firma_url(@firma)
    assert_response :success
  end

  test "should update firma" do
    patch firma_url(@firma), params: { firma: { nombre: @firma.nombre, saludo: @firma.saludo } }
    assert_redirected_to firma_url(@firma)
  end

  test "should destroy firma" do
    assert_difference("Firma.count", -1) do
      delete firma_url(@firma)
    end

    assert_redirected_to firmas_url
  end
end
