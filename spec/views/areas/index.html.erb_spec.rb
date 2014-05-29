require 'spec_helper'

describe "areas/index" do
  before(:each) do
    assign(:areas, [
      stub_model(Area,
        :name => "Name"
      ),
      stub_model(Area,
        :name => "Name"
      )
    ])
  end

  it "renders a list of areas" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
