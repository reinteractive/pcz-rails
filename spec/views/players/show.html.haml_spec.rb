require 'rails_helper'

RSpec.describe "players/show", type: :view do
  before(:each) do
    @player = assign(:player, Player.create!(
      :fideid => "",
      :name => "Name",
      :rating => 1,
      :k-factor => 2,
      :rapid => 3,
      :blitz => 4,
      :birthday => 5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
  end
end
