require 'rails_helper'

RSpec.describe "tournaments/show", type: :view do
  before(:each) do
    @tournament = assign(:tournament, Tournament.create!(
      :name => "Name",
      :venue => "Venue",
      :more_information => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Venue/)
    expect(rendered).to match(/MyText/)
  end
end
