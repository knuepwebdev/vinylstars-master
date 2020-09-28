require 'rails_helper'

RSpec.describe "artists/show", type: :view do
  before(:each) do
    @artist = assign(:artist, Artist.first)
  end

  it "renders attributes in <p>" do
    render
    expect(response).to include(@artist.name)
  end
end
