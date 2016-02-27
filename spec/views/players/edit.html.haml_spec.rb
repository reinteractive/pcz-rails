require 'rails_helper'

RSpec.describe "players/edit", type: :view do
  before(:each) do
    @player = assign(:player, Player.create!(
      :fideid => "",
      :name => "MyString",
      :rating => 1,
      :k-factor => 1,
      :rapid => 1,
      :blitz => 1,
      :birthday => 1
    ))
  end

  it "renders the edit player form" do
    render

    assert_select "form[action=?][method=?]", player_path(@player), "post" do

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
