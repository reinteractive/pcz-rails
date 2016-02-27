require 'rails_helper'

RSpec.describe "tournaments/edit", type: :view do
  before(:each) do
    @tournament = assign(:tournament, Tournament.create!(
      :name => "MyString",
      :venue => "MyString",
      :more_information => "MyText"
    ))
  end

  it "renders the edit tournament form" do
    render

    assert_select "form[action=?][method=?]", tournament_path(@tournament), "post" do

      assert_select "input#tournament_name[name=?]", "tournament[name]"

      assert_select "input#tournament_venue[name=?]", "tournament[venue]"

      assert_select "textarea#tournament_more_information[name=?]", "tournament[more_information]"
    end
  end
end
