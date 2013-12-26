require 'spec_helper'

describe "StaticPages" do

  subject{ page }
  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home page" do
    before { visit '/static_pages/home' }

  	it { should have_content('Sample App') }
    it { should have_title("#{base_title}") }
  end

  describe "Help page" do
    before { visit '/static_pages/help' }

  	it { should have_content('Help') }
    it { should have_title("#{base_title} | Help") }
  end

  describe "About page" do
    before { visit '/static_pages/about' }

    it { should have_content('About Us') }
    it { should have_title("#{base_title} | About Us") }
  end
end
