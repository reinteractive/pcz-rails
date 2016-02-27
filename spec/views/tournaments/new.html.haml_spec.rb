require 'rails_helper'

RSpec.describe "tournaments/new", type: :view do
  before(:each) do
    assign(:tournament, Tournament.new(
      :name => "MyString",
      :venue => "MyString",
      :more_information => "MyText"
    ))
  end

  it "renders new tournament form" do
    render

    assert_select "form[action=?][method=?]", tournaments_path, "post" do

      assert_select "input#tournament_name[name=?]", "tournament[name]"

      assert_select "input#tournament_venue[name=?]", "tournament[venue]"

      assert_select "textarea#tournament_more_information[name=?]", "tournament[more_information]"
    end
  end
end
