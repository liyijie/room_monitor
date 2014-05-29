require 'spec_helper'

describe "areas/edit" do
  before(:each) do
    @area = assign(:area, stub_model(Area,
      :name => "MyString"
    ))
  end

  it "renders the edit area form" do
    render

    assert_select "form[action=?][method=?]", area_path(@area), "post" do
      assert_select "input#area_name[name=?]", "area[name]"
    end
  end
end
