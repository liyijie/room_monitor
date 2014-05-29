require 'spec_helper'

describe "areas/show" do
  before(:each) do
    @area = assign(:area, stub_model(Area,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
