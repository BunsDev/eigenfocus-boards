require 'rails_helper'

describe "Issues - Global ID link" do
  let!(:user) { create(:user) }
  let!(:project) { create(:project) }

  context "When issue exists" do
    let!(:issue) { create(:issue, project:) }

    specify "I am redirected to the project all issues with issue modal open" do
      visit project_item_path(project, id: issue.id)

      expect(page).to have_current_path(project_show_issue_path(project, issue))
    end

    specify "I can retrieve the global ID link on the issue details" do
      visit project_item_path(project, id: issue.id)

      expect(page).to have_content(issue.title)

      find(".cpy-global-issue-link").hover
      expect(page).to have_content("Click to copy URL")

      find(".cpy-global-issue-link").click
      expect(page).to have_content("Copied!")

      # Missing a way to check the clipboard content
    end
  end

  context "When issue doesn't exist" do
    specify "I am redirected to the root path with a feedback message" do
      visit project_item_path(project, id: "null")

      expect(page).to have_current_path(root_path)
      expect(page).to have_content("The issue doesn't exist.")
    end
  end
end
