require 'rails_helper'

RSpec.describe "tournaments/index", type: :view do
  before(:each) do
    assign(:tournaments, [
      Tournament.create!(
        :name => "Name",
        :venue => "Venue",
        :more_information => "MyText"
      ),
      Tournament.create!(
        :name => "Name",
        :venue => "Venue",
        :more_information => "MyText"
      )
    ])
  end

  it "renders a list of tournaments" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Venue".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
