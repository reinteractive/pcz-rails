require 'rails_helper'

RSpec.describe "players/index", type: :view do
  before(:each) do
    assign(:players, [
      Player.create!(
        :fideid => "",
        :name => "Name",
        :rating => 1,
        :k-factor => 2,
        :rapid => 3,
        :blitz => 4,
        :birthday => 5
      ),
      Player.create!(
        :fideid => "",
        :name => "Name",
        :rating => 1,
        :k-factor => 2,
        :rapid => 3,
        :blitz => 4,
        :birthday => 5
      )
    ])
  end

  it "renders a list of players" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
