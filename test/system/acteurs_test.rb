require "application_system_test_case"

class ActeursTest < ApplicationSystemTestCase
  setup do
    @acteur = acteurs(:one)
  end

  test "visiting the index" do
    visit acteurs_url
    assert_selector "h1", text: "Acteurs"
  end

  test "should create acteur" do
    visit acteurs_url
    click_on "New acteur"

    fill_in "Anniversaire", with: @acteur.Anniversaire
    fill_in "Biographie", with: @acteur.Biographie
    fill_in "Filmographie", with: @acteur.Filmographie
    fill_in "Nom", with: @acteur.Nom
    fill_in "Photo", with: @acteur.Photo
    click_on "Create Acteur"

    assert_text "Acteur was successfully created"
    click_on "Back"
  end

  test "should update Acteur" do
    visit acteur_url(@acteur)
    click_on "Edit this acteur", match: :first

    fill_in "Anniversaire", with: @acteur.Anniversaire
    fill_in "Biographie", with: @acteur.Biographie
    fill_in "Filmographie", with: @acteur.Filmographie
    fill_in "Nom", with: @acteur.Nom
    fill_in "Photo", with: @acteur.Photo
    click_on "Update Acteur"

    assert_text "Acteur was successfully updated"
    click_on "Back"
  end

  test "should destroy Acteur" do
    visit acteur_url(@acteur)
    click_on "Destroy this acteur", match: :first

    assert_text "Acteur was successfully destroyed"
  end
end
