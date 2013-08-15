require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Красноярская летняя школа'" do
      visit '/static_pages/home'
      expect(page).to have_content('Красноярская летняя школа')
    end

    it "should have the title 'КЛШ'" do
      visit '/static_pages/home'
      expect(page).to have_title("Красноярская летняя школа | КЛШ")
    end
  end


  describe "About page" do

    it "should have the content 'О нас'" do
      visit '/static_pages/about'
      expect(page).to have_content('О нас')
    end

    it "should have the title 'О нас'" do
      visit '/static_pages/about'
      expect(page).to have_title("Красноярская летняя школа | О нас")
    end
  end
end