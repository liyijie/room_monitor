require 'spec_helper'

describe "areas/new" do
  before(:each) do
    assign(:area, stub_model(Area,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new area form" do
    render

    assert_select "form[action=?][method=?]", areas_path, "post" do
      assert_select "input#area_name[name=?]", "area[name]"
    end
  end
end
