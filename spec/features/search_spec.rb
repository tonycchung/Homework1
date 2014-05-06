require "spec_helper"

describe "My search page" do
	it "has results" do
		visit "http://google.com"
		fill_in "q", with: "NBA"
		click_on "Google Search"
		page.text.must_include "NBA.com"
		page.text.must_include "https://twitter.com/NBA"
	end
end