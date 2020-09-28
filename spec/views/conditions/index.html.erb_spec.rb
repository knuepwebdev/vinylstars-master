require 'rails_helper'

RSpec.describe "conditions/index", type: :view do
  before(:each) do
    @search = Condition.ransack(params[:q])
    @conditions = @search.result(distinct: true).page(1)
  end

  it "renders a list of conditions" do
    render
    assert_select "table tbody tr", :count => @conditions.count
    assert_select "tr>td", :text => @conditions.first.name, :count => 1
  end
end
