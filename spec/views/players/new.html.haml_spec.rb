require 'rails_helper'

RSpec.describe "players/new", type: :view do
  before(:each) do
    assign(:player, Player.new(
      :fideid => "",
      :name => "MyString",
      :rating => 1,
      :k-factor => 1,
      :rapid => 1,
      :blitz => 1,
      :birthday => 1
    ))
  end

  it "renders new player form" do
    render

    assert_select "form[action=?][method=?]", players_path, "post" do

      assert_select "input#player_fideid[name=?]", "player[fideid]"

      assert_select "input#player_name[name=?]", "player[name]"

      assert_select "input#player_rating[name=?]", "player[rating]"

      assert_select "input#player_k-factor[name=?]", "player[k-factor]"

      assert_select "input#player_rapid[name=?]", "player[rapid]"

      assert_select "input#player_blitz[name=?]", "player[blitz]"

      assert_select "input#player_birthday[name=?]", "player[birthday]"
    end
  end
end
