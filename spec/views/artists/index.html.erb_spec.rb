require 'rails_helper'

RSpec.describe "artists/index", type: :view do
  before(:each) do
    @search = Artist.ransack(params[:q])
    @artists = @search.result(distinct: true).page(1)
  end

  it "renders a list of artists" do
    render
    assert_select "table tbody tr", :count => Artist.count
    assert_select "tr>td", :text => Artist.first.name, :count => 1
  end
end
