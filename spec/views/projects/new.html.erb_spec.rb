require 'rails_helper'

RSpec.describe "projects/new", type: :view do
  before(:each) do
    assign(:project, Project.new(
      :name => "MyString",
      :repo => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new project form" do
    render

    assert_select "form[action=?][method=?]", projects_path, "post" do

      assert_select "input#project_name[name=?]", "project[name]"

      assert_select "input#project_repo[name=?]", "project[repo]"

      assert_select "input#project_description[name=?]", "project[description]"
    end
  end
end
