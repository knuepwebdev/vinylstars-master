require 'rails_helper'

RSpec.describe "albums/index", type: :view do
  before(:each) do
    @search = Album.ransack("title_cont"=>"", "artist_name_cont"=>"", "commit"=>"Search")
    assign(:albums, @search.result(distinct: true).page(1))
  end

  it "renders a list of albums" do
    render
    album_count = Album.count
    assert_select "table tbody tr", :count => album_count
  end
end
