require "application_system_test_case"

class FirmasTest < ApplicationSystemTestCase
  setup do
    @firma = firmas(:one)
  end

  test "visiting the index" do
    visit firmas_url
    assert_selector "h1", text: "Firmas"
  end

  test "should create firma" do
    visit firmas_url
    click_on "New firma"

    fill_in "Nombre", with: @firma.nombre
    fill_in "Saludo", with: @firma.saludo
    click_on "Añadir Firma"

    assert_text "Firma ha sido creada correctamente."
    click_on "Back"
  end

  test "should update Firma" do
    visit firma_url(@firma)
    click_on "Editar firma", match: :first

    fill_in "Nombre", with: @firma.nombre
    fill_in "Saludo", with: @firma.saludo
    click_on "Actualizar firma"

    assert_text "Firma was successfully updated"
    click_on "Back"
  end

  test "should destroy Firma" do
    visit firma_url(@firma)
    click_on "Destroy this firma", match: :first

    assert_text "Firma was successfully destroyed"
  end
end
