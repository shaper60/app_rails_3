require 'rails_helper'

describe ApplicationHelper do

  describe "full_title" do
    it "shoud include the page title" do
      expect(full_title("foo")).to match(/foo/)
    end

    it "should include the base title" do
      expect(full_title("foo")).to match(/^Ruby on Rails Tutorial Sample App/)
    end

    it "should cot include a bar for the home page" do
      expect(full_title("")).not_to match(/\|/)
    end
  end
end