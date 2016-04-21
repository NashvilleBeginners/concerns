require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      :name => "MyString",
      :activated => false,
      :company => nil
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input#product_name[name=?]", "product[name]"

      assert_select "input#product_activated[name=?]", "product[activated]"

      assert_select "input#product_company_id[name=?]", "product[company_id]"
    end
  end
end
