require 'rails_helper'

RSpec.describe "categories/index", type: :view do
  before(:each) do
		@search = Category.ransack(params[:q])
    @categories = @search.result(distinct: true).page(1)
  end

  it "renders a list of categories" do
    render
  end
end
