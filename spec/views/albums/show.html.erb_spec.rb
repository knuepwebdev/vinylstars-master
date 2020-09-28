require 'rails_helper'

RSpec.describe "albums/show", type: :view do
  before(:each) do
    @album = assign(:album, Album.last)
  end

  it "renders attributes in <p>" do
    render
    expect(response).to include(@album.title)
    expect(response).to include(@album.year)
    expect(rendered).to include(@album.condition.name)
  end
end
